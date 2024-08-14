import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:rhttp/src/client/rhttp_client.dart';
import 'package:rhttp/src/interceptor/interceptor.dart';
import 'package:rhttp/src/model/cancel_token.dart';
import 'package:rhttp/src/model/response.dart';
import 'package:rhttp/src/model/settings.dart';
import 'package:rhttp/src/request.dart';
import 'package:rhttp/src/rust/api/http.dart' as rust;
import 'package:rhttp/src/rust/api/http_types.dart';

const Map<String, String> _keepQuery = {};
const HttpHeaders _keepHeaders = HttpHeaders.map({});
const HttpBody _keepBody = HttpBody.text('');

/// An HTTP request that can be used
/// on a client or statically.
class BaseRhttpRequest {
  /// The HTTP method to use.
  final HttpMethod method;

  /// The URL to request.
  final String url;

  /// Query parameters.
  /// This can be null, if there are no query parameters
  /// or if they are already part of the URL.
  final Map<String, String>? query;

  /// Headers to send with the request.
  final HttpHeaders? headers;

  /// The body of the request.
  final HttpBody? body;

  /// The expected body type of the response.
  final HttpExpectBody expectBody;

  /// The cancel token to use for the request.
  final CancelToken? cancelToken;

  /// Map that can be used to store additional information.
  /// Primarily used by interceptors.
  /// This is not const to allow for modifications.
  final Map<String, dynamic> additionalData = {};

  BaseRhttpRequest({
    required this.method,
    required this.url,
    required this.query,
    required this.headers,
    required this.body,
    required this.expectBody,
    required this.cancelToken,
  });
}

/// An HTTP request with the information which client to use.
class RhttpRequest extends BaseRhttpRequest {
  /// The client to use for the request.
  final RhttpClient? client;

  /// The settings to use for the request.
  /// This is **only** used if [client] is `null`.
  final ClientSettings? settings;

  /// The interceptor to use for the request.
  /// This can be a [QueuedInterceptor] if there are multiple interceptors.
  final Interceptor? interceptor;

  RhttpRequest({
    required this.client,
    required this.settings,
    required this.interceptor,
    required super.method,
    required super.url,
    required super.query,
    required super.headers,
    required super.body,
    required super.expectBody,
    required super.cancelToken,
  });

  factory RhttpRequest.fromBase({
    required BaseRhttpRequest request,
    required RhttpClient? client,
    required ClientSettings? settings,
    required Interceptor? interceptor,
  }) =>
      RhttpRequest(
        client: client,
        settings: settings,
        interceptor: interceptor,
        method: request.method,
        url: request.url,
        query: request.query,
        headers: request.headers,
        body: request.body,
        expectBody: request.expectBody,
        cancelToken: request.cancelToken,
      );

  /// Sends the request using the specified client / settings
  /// and returns the response.
  Future<HttpResponse> send() => requestInternalGeneric(this);

  RhttpRequest copyWith({
    RhttpClient? client,
    ClientSettings? settings,
    HttpMethod? method,
    String? url,
    Map<String, String>? query = _keepQuery,
    HttpHeaders? headers = _keepHeaders,
    HttpBody? body = _keepBody,
    HttpExpectBody? expectBody,
    CancelToken? cancelToken,
  }) =>
      RhttpRequest(
        client: client ?? this.client,
        settings: settings ?? this.settings,
        interceptor: interceptor,
        method: method ?? this.method,
        url: url ?? this.url,
        query: identical(query, _keepQuery) ? this.query : query,
        headers: identical(headers, _keepHeaders) ? this.headers : headers,
        body: identical(body, _keepBody) ? this.body : body,
        expectBody: expectBody ?? this.expectBody,
        cancelToken: cancelToken ?? this.cancelToken,
      );
}

enum HttpExpectBody {
  /// The response body is parsed as text.
  text,

  /// The response body is parsed as bytes.
  bytes,

  /// The response body is a stream of bytes.
  stream,
  ;
}

/// The HTTP method to use.
enum HttpMethod {
  options,
  get,
  post,
  put,
  delete,
  head,
  trace,
  connect,
  patch,
  ;
}

enum HttpVersionPref {
  /// Only use HTTP/1.0.
  http1_0,

  /// Only use HTTP/1.1.
  http1_1,

  /// Only use HTTP/2.
  http2,

  /// Only use HTTP/3.
  http3,

  /// Default behavior: Let the server decide.
  all,
  ;
}

sealed class HttpHeaders {
  const HttpHeaders();

  /// A typed header map with a set of predefined keys.
  const factory HttpHeaders.map(Map<HttpHeaderName, String> map) =
      HttpHeaderMap._;

  /// A raw header map where the keys are strings.
  const factory HttpHeaders.rawMap(Map<String, String> map) =
      HttpHeaderRawMap._;

  /// A raw header list.
  /// This allows for multiple headers with the same name.
  const factory HttpHeaders.list(List<(String, String)> list) =
      HttpHeaderList._;
}

/// A typed header map with a set of predefined keys.
class HttpHeaderMap extends HttpHeaders {
  final Map<HttpHeaderName, String> map;

  const HttpHeaderMap._(this.map);
}

/// A raw header map where the keys are strings.
class HttpHeaderRawMap extends HttpHeaders {
  final Map<String, String> map;

  const HttpHeaderRawMap._(this.map);
}

/// A raw header list.
/// This allows for multiple headers with the same name.
class HttpHeaderList extends HttpHeaders {
  final List<(String, String)> list;

  const HttpHeaderList._(this.list);
}

sealed class HttpBody {
  const HttpBody();

  /// A plain text body.
  const factory HttpBody.text(String text) = HttpBodyText._;

  /// A JSON body.
  /// The Content-Type header will be set to `application/json` if not provided.
  const factory HttpBody.json(Map<String, dynamic> json) = HttpBodyJson._;

  /// A body of raw bytes.
  const factory HttpBody.bytes(Uint8List bytes) = HttpBodyBytes._;

  /// A www-form-urlencoded body.
  /// The Content-Type header will be set to `application/x-www-form-urlencoded`
  /// if not provided.
  const factory HttpBody.form(Map<String, String> form) = HttpBodyForm._;

  /// Multi-part form data.
  /// The Content-Type header will be overridden to `multipart/form-data`
  /// with a random boundary.
  factory HttpBody.multipart(Map<String, MultipartItem> formData) =
      HttpBodyMultipart.map;
}

/// A plain text body.
class HttpBodyText extends HttpBody {
  final String text;

  const HttpBodyText._(this.text);
}

/// A JSON body.
/// The Content-Type header will be set to `application/json` if not provided.
class HttpBodyJson extends HttpBody {
  final Map<String, dynamic> json;

  const HttpBodyJson._(this.json);
}

/// A body of raw bytes.
class HttpBodyBytes extends HttpBody {
  final Uint8List bytes;

  const HttpBodyBytes._(this.bytes);
}

/// A www-form-urlencoded body.
/// The Content-Type header will be set to `application/x-www-form-urlencoded`
/// if not provided.
class HttpBodyForm extends HttpBody {
  final Map<String, String> form;

  const HttpBodyForm._(this.form);
}

/// Multi-part form data.
/// The Content-Type header will be overridden to `multipart/form-data`
/// with a random boundary.
class HttpBodyMultipart extends HttpBody {
  final List<(String, MultipartItem)> parts;

  const HttpBodyMultipart._(this.parts);

  factory HttpBodyMultipart.map(Map<String, MultipartItem> map) {
    return HttpBodyMultipart._([
      for (final entry in map.entries) (entry.key, entry.value),
    ]);
  }

  /// Public in case you want to create a list of form data manually.
  const factory HttpBodyMultipart.list(List<(String, MultipartItem)> list) =
      HttpBodyMultipart._;
}

sealed class MultipartItem {
  final String? fileName;
  final String? contentType;

  const MultipartItem({
    this.fileName,
    this.contentType,
  });

  /// A plain text value.
  const factory MultipartItem.text({
    required String text,
    String? fileName,
    String? contentType,
  }) = MultiPartText._;

  /// A value of raw bytes.
  const factory MultipartItem.bytes({
    required Uint8List bytes,
    String? fileName,
    String? contentType,
  }) = MultiPartBytes._;

  /// A file path.
  const factory MultipartItem.file({
    required String file,
    String? fileName,
    String? contentType,
  }) = MultiPartFile._;
}

/// A plain text value.
class MultiPartText extends MultipartItem {
  final String text;

  const MultiPartText._({
    required this.text,
    super.fileName,
    super.contentType,
  });
}

/// A value of raw bytes.
class MultiPartBytes extends MultipartItem {
  final Uint8List bytes;

  const MultiPartBytes._({
    required this.bytes,
    super.fileName,
    super.contentType,
  });
}

/// A file path.
class MultiPartFile extends MultipartItem {
  final String file;

  const MultiPartFile._({
    required this.file,
    super.fileName,
    super.contentType,
  });
}

@internal
extension HttpExpectBodyExt on HttpExpectBody {
  rust.HttpExpectBody toRustType() {
    return switch (this) {
      HttpExpectBody.text => rust.HttpExpectBody.text,
      HttpExpectBody.bytes => rust.HttpExpectBody.bytes,
      HttpExpectBody.stream => throw UnimplementedError(),
    };
  }
}
