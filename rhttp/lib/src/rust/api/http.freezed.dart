// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HttpBody {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HttpBody);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HttpBody()';
  }
}

/// @nodoc
class $HttpBodyCopyWith<$Res> {
  $HttpBodyCopyWith(HttpBody _, $Res Function(HttpBody) __);
}

/// @nodoc

class HttpBody_Text extends HttpBody {
  const HttpBody_Text(this.field0) : super._();

  final String field0;

  /// Create a copy of HttpBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HttpBody_TextCopyWith<HttpBody_Text> get copyWith =>
      _$HttpBody_TextCopyWithImpl<HttpBody_Text>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HttpBody_Text &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'HttpBody.text(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $HttpBody_TextCopyWith<$Res>
    implements $HttpBodyCopyWith<$Res> {
  factory $HttpBody_TextCopyWith(
          HttpBody_Text value, $Res Function(HttpBody_Text) _then) =
      _$HttpBody_TextCopyWithImpl;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class _$HttpBody_TextCopyWithImpl<$Res>
    implements $HttpBody_TextCopyWith<$Res> {
  _$HttpBody_TextCopyWithImpl(this._self, this._then);

  final HttpBody_Text _self;
  final $Res Function(HttpBody_Text) _then;

  /// Create a copy of HttpBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(HttpBody_Text(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HttpBody_Bytes extends HttpBody {
  const HttpBody_Bytes(this.field0) : super._();

  final Uint8List field0;

  /// Create a copy of HttpBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HttpBody_BytesCopyWith<HttpBody_Bytes> get copyWith =>
      _$HttpBody_BytesCopyWithImpl<HttpBody_Bytes>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HttpBody_Bytes &&
            const DeepCollectionEquality().equals(other.field0, field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field0));

  @override
  String toString() {
    return 'HttpBody.bytes(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $HttpBody_BytesCopyWith<$Res>
    implements $HttpBodyCopyWith<$Res> {
  factory $HttpBody_BytesCopyWith(
          HttpBody_Bytes value, $Res Function(HttpBody_Bytes) _then) =
      _$HttpBody_BytesCopyWithImpl;
  @useResult
  $Res call({Uint8List field0});
}

/// @nodoc
class _$HttpBody_BytesCopyWithImpl<$Res>
    implements $HttpBody_BytesCopyWith<$Res> {
  _$HttpBody_BytesCopyWithImpl(this._self, this._then);

  final HttpBody_Bytes _self;
  final $Res Function(HttpBody_Bytes) _then;

  /// Create a copy of HttpBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(HttpBody_Bytes(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class HttpBody_BytesStream extends HttpBody {
  const HttpBody_BytesStream() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HttpBody_BytesStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HttpBody.bytesStream()';
  }
}

/// @nodoc

class HttpBody_Form extends HttpBody {
  const HttpBody_Form(final Map<String, String> field0)
      : _field0 = field0,
        super._();

  final Map<String, String> _field0;
  Map<String, String> get field0 {
    if (_field0 is EqualUnmodifiableMapView) return _field0;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_field0);
  }

  /// Create a copy of HttpBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HttpBody_FormCopyWith<HttpBody_Form> get copyWith =>
      _$HttpBody_FormCopyWithImpl<HttpBody_Form>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HttpBody_Form &&
            const DeepCollectionEquality().equals(other._field0, _field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_field0));

  @override
  String toString() {
    return 'HttpBody.form(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $HttpBody_FormCopyWith<$Res>
    implements $HttpBodyCopyWith<$Res> {
  factory $HttpBody_FormCopyWith(
          HttpBody_Form value, $Res Function(HttpBody_Form) _then) =
      _$HttpBody_FormCopyWithImpl;
  @useResult
  $Res call({Map<String, String> field0});
}

/// @nodoc
class _$HttpBody_FormCopyWithImpl<$Res>
    implements $HttpBody_FormCopyWith<$Res> {
  _$HttpBody_FormCopyWithImpl(this._self, this._then);

  final HttpBody_Form _self;
  final $Res Function(HttpBody_Form) _then;

  /// Create a copy of HttpBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(HttpBody_Form(
      null == field0
          ? _self._field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class HttpBody_Multipart extends HttpBody {
  const HttpBody_Multipart(this.field0) : super._();

  final MultipartPayload field0;

  /// Create a copy of HttpBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HttpBody_MultipartCopyWith<HttpBody_Multipart> get copyWith =>
      _$HttpBody_MultipartCopyWithImpl<HttpBody_Multipart>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HttpBody_Multipart &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'HttpBody.multipart(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $HttpBody_MultipartCopyWith<$Res>
    implements $HttpBodyCopyWith<$Res> {
  factory $HttpBody_MultipartCopyWith(
          HttpBody_Multipart value, $Res Function(HttpBody_Multipart) _then) =
      _$HttpBody_MultipartCopyWithImpl;
  @useResult
  $Res call({MultipartPayload field0});
}

/// @nodoc
class _$HttpBody_MultipartCopyWithImpl<$Res>
    implements $HttpBody_MultipartCopyWith<$Res> {
  _$HttpBody_MultipartCopyWithImpl(this._self, this._then);

  final HttpBody_Multipart _self;
  final $Res Function(HttpBody_Multipart) _then;

  /// Create a copy of HttpBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(HttpBody_Multipart(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as MultipartPayload,
    ));
  }
}

/// @nodoc
mixin _$HttpHeaders {
  Object get field0;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HttpHeaders &&
            const DeepCollectionEquality().equals(other.field0, field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field0));

  @override
  String toString() {
    return 'HttpHeaders(field0: $field0)';
  }
}

/// @nodoc
class $HttpHeadersCopyWith<$Res> {
  $HttpHeadersCopyWith(HttpHeaders _, $Res Function(HttpHeaders) __);
}

/// @nodoc

class HttpHeaders_Map extends HttpHeaders {
  const HttpHeaders_Map(final Map<String, String> field0)
      : _field0 = field0,
        super._();

  final Map<String, String> _field0;
  @override
  Map<String, String> get field0 {
    if (_field0 is EqualUnmodifiableMapView) return _field0;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_field0);
  }

  /// Create a copy of HttpHeaders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HttpHeaders_MapCopyWith<HttpHeaders_Map> get copyWith =>
      _$HttpHeaders_MapCopyWithImpl<HttpHeaders_Map>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HttpHeaders_Map &&
            const DeepCollectionEquality().equals(other._field0, _field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_field0));

  @override
  String toString() {
    return 'HttpHeaders.map(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $HttpHeaders_MapCopyWith<$Res>
    implements $HttpHeadersCopyWith<$Res> {
  factory $HttpHeaders_MapCopyWith(
          HttpHeaders_Map value, $Res Function(HttpHeaders_Map) _then) =
      _$HttpHeaders_MapCopyWithImpl;
  @useResult
  $Res call({Map<String, String> field0});
}

/// @nodoc
class _$HttpHeaders_MapCopyWithImpl<$Res>
    implements $HttpHeaders_MapCopyWith<$Res> {
  _$HttpHeaders_MapCopyWithImpl(this._self, this._then);

  final HttpHeaders_Map _self;
  final $Res Function(HttpHeaders_Map) _then;

  /// Create a copy of HttpHeaders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(HttpHeaders_Map(
      null == field0
          ? _self._field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class HttpHeaders_List extends HttpHeaders {
  const HttpHeaders_List(final List<(String, String)> field0)
      : _field0 = field0,
        super._();

  final List<(String, String)> _field0;
  @override
  List<(String, String)> get field0 {
    if (_field0 is EqualUnmodifiableListView) return _field0;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_field0);
  }

  /// Create a copy of HttpHeaders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HttpHeaders_ListCopyWith<HttpHeaders_List> get copyWith =>
      _$HttpHeaders_ListCopyWithImpl<HttpHeaders_List>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HttpHeaders_List &&
            const DeepCollectionEquality().equals(other._field0, _field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_field0));

  @override
  String toString() {
    return 'HttpHeaders.list(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $HttpHeaders_ListCopyWith<$Res>
    implements $HttpHeadersCopyWith<$Res> {
  factory $HttpHeaders_ListCopyWith(
          HttpHeaders_List value, $Res Function(HttpHeaders_List) _then) =
      _$HttpHeaders_ListCopyWithImpl;
  @useResult
  $Res call({List<(String, String)> field0});
}

/// @nodoc
class _$HttpHeaders_ListCopyWithImpl<$Res>
    implements $HttpHeaders_ListCopyWith<$Res> {
  _$HttpHeaders_ListCopyWithImpl(this._self, this._then);

  final HttpHeaders_List _self;
  final $Res Function(HttpHeaders_List) _then;

  /// Create a copy of HttpHeaders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(HttpHeaders_List(
      null == field0
          ? _self._field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as List<(String, String)>,
    ));
  }
}

/// @nodoc
mixin _$HttpResponseBody {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HttpResponseBody);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HttpResponseBody()';
  }
}

/// @nodoc
class $HttpResponseBodyCopyWith<$Res> {
  $HttpResponseBodyCopyWith(
      HttpResponseBody _, $Res Function(HttpResponseBody) __);
}

/// @nodoc

class HttpResponseBody_Text extends HttpResponseBody {
  const HttpResponseBody_Text(this.field0) : super._();

  final String field0;

  /// Create a copy of HttpResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HttpResponseBody_TextCopyWith<HttpResponseBody_Text> get copyWith =>
      _$HttpResponseBody_TextCopyWithImpl<HttpResponseBody_Text>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HttpResponseBody_Text &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'HttpResponseBody.text(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $HttpResponseBody_TextCopyWith<$Res>
    implements $HttpResponseBodyCopyWith<$Res> {
  factory $HttpResponseBody_TextCopyWith(HttpResponseBody_Text value,
          $Res Function(HttpResponseBody_Text) _then) =
      _$HttpResponseBody_TextCopyWithImpl;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class _$HttpResponseBody_TextCopyWithImpl<$Res>
    implements $HttpResponseBody_TextCopyWith<$Res> {
  _$HttpResponseBody_TextCopyWithImpl(this._self, this._then);

  final HttpResponseBody_Text _self;
  final $Res Function(HttpResponseBody_Text) _then;

  /// Create a copy of HttpResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(HttpResponseBody_Text(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HttpResponseBody_Bytes extends HttpResponseBody {
  const HttpResponseBody_Bytes(this.field0) : super._();

  final Uint8List field0;

  /// Create a copy of HttpResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HttpResponseBody_BytesCopyWith<HttpResponseBody_Bytes> get copyWith =>
      _$HttpResponseBody_BytesCopyWithImpl<HttpResponseBody_Bytes>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HttpResponseBody_Bytes &&
            const DeepCollectionEquality().equals(other.field0, field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field0));

  @override
  String toString() {
    return 'HttpResponseBody.bytes(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $HttpResponseBody_BytesCopyWith<$Res>
    implements $HttpResponseBodyCopyWith<$Res> {
  factory $HttpResponseBody_BytesCopyWith(HttpResponseBody_Bytes value,
          $Res Function(HttpResponseBody_Bytes) _then) =
      _$HttpResponseBody_BytesCopyWithImpl;
  @useResult
  $Res call({Uint8List field0});
}

/// @nodoc
class _$HttpResponseBody_BytesCopyWithImpl<$Res>
    implements $HttpResponseBody_BytesCopyWith<$Res> {
  _$HttpResponseBody_BytesCopyWithImpl(this._self, this._then);

  final HttpResponseBody_Bytes _self;
  final $Res Function(HttpResponseBody_Bytes) _then;

  /// Create a copy of HttpResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(HttpResponseBody_Bytes(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class HttpResponseBody_Stream extends HttpResponseBody {
  const HttpResponseBody_Stream() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HttpResponseBody_Stream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HttpResponseBody.stream()';
  }
}

/// @nodoc
mixin _$MultipartValue {
  Object get field0;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultipartValue &&
            const DeepCollectionEquality().equals(other.field0, field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field0));

  @override
  String toString() {
    return 'MultipartValue(field0: $field0)';
  }
}

/// @nodoc
class $MultipartValueCopyWith<$Res> {
  $MultipartValueCopyWith(MultipartValue _, $Res Function(MultipartValue) __);
}

/// @nodoc

class MultipartValue_Text extends MultipartValue {
  const MultipartValue_Text(this.field0) : super._();

  @override
  final String field0;

  /// Create a copy of MultipartValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultipartValue_TextCopyWith<MultipartValue_Text> get copyWith =>
      _$MultipartValue_TextCopyWithImpl<MultipartValue_Text>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultipartValue_Text &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'MultipartValue.text(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $MultipartValue_TextCopyWith<$Res>
    implements $MultipartValueCopyWith<$Res> {
  factory $MultipartValue_TextCopyWith(
          MultipartValue_Text value, $Res Function(MultipartValue_Text) _then) =
      _$MultipartValue_TextCopyWithImpl;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class _$MultipartValue_TextCopyWithImpl<$Res>
    implements $MultipartValue_TextCopyWith<$Res> {
  _$MultipartValue_TextCopyWithImpl(this._self, this._then);

  final MultipartValue_Text _self;
  final $Res Function(MultipartValue_Text) _then;

  /// Create a copy of MultipartValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(MultipartValue_Text(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class MultipartValue_Bytes extends MultipartValue {
  const MultipartValue_Bytes(this.field0) : super._();

  @override
  final Uint8List field0;

  /// Create a copy of MultipartValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultipartValue_BytesCopyWith<MultipartValue_Bytes> get copyWith =>
      _$MultipartValue_BytesCopyWithImpl<MultipartValue_Bytes>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultipartValue_Bytes &&
            const DeepCollectionEquality().equals(other.field0, field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field0));

  @override
  String toString() {
    return 'MultipartValue.bytes(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $MultipartValue_BytesCopyWith<$Res>
    implements $MultipartValueCopyWith<$Res> {
  factory $MultipartValue_BytesCopyWith(MultipartValue_Bytes value,
          $Res Function(MultipartValue_Bytes) _then) =
      _$MultipartValue_BytesCopyWithImpl;
  @useResult
  $Res call({Uint8List field0});
}

/// @nodoc
class _$MultipartValue_BytesCopyWithImpl<$Res>
    implements $MultipartValue_BytesCopyWith<$Res> {
  _$MultipartValue_BytesCopyWithImpl(this._self, this._then);

  final MultipartValue_Bytes _self;
  final $Res Function(MultipartValue_Bytes) _then;

  /// Create a copy of MultipartValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(MultipartValue_Bytes(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class MultipartValue_File extends MultipartValue {
  const MultipartValue_File(this.field0) : super._();

  @override
  final String field0;

  /// Create a copy of MultipartValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultipartValue_FileCopyWith<MultipartValue_File> get copyWith =>
      _$MultipartValue_FileCopyWithImpl<MultipartValue_File>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultipartValue_File &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'MultipartValue.file(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $MultipartValue_FileCopyWith<$Res>
    implements $MultipartValueCopyWith<$Res> {
  factory $MultipartValue_FileCopyWith(
          MultipartValue_File value, $Res Function(MultipartValue_File) _then) =
      _$MultipartValue_FileCopyWithImpl;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class _$MultipartValue_FileCopyWithImpl<$Res>
    implements $MultipartValue_FileCopyWith<$Res> {
  _$MultipartValue_FileCopyWithImpl(this._self, this._then);

  final MultipartValue_File _self;
  final $Res Function(MultipartValue_File) _then;

  /// Create a copy of MultipartValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(MultipartValue_File(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
