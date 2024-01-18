// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthRequest _$AuthRequestFromJson(Map<String, dynamic> json) {
  return _AuthRequest.fromJson(json);
}

/// @nodoc
mixin _$AuthRequest {
  String get taxId => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get tokenFCM => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRequestCopyWith<AuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRequestCopyWith<$Res> {
  factory $AuthRequestCopyWith(
          AuthRequest value, $Res Function(AuthRequest) then) =
      _$AuthRequestCopyWithImpl<$Res, AuthRequest>;
  @useResult
  $Res call({String taxId, String password, String tokenFCM});
}

/// @nodoc
class _$AuthRequestCopyWithImpl<$Res, $Val extends AuthRequest>
    implements $AuthRequestCopyWith<$Res> {
  _$AuthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxId = null,
    Object? password = null,
    Object? tokenFCM = null,
  }) {
    return _then(_value.copyWith(
      taxId: null == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      tokenFCM: null == tokenFCM
          ? _value.tokenFCM
          : tokenFCM // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthRequestImplCopyWith<$Res>
    implements $AuthRequestCopyWith<$Res> {
  factory _$$AuthRequestImplCopyWith(
          _$AuthRequestImpl value, $Res Function(_$AuthRequestImpl) then) =
      __$$AuthRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taxId, String password, String tokenFCM});
}

/// @nodoc
class __$$AuthRequestImplCopyWithImpl<$Res>
    extends _$AuthRequestCopyWithImpl<$Res, _$AuthRequestImpl>
    implements _$$AuthRequestImplCopyWith<$Res> {
  __$$AuthRequestImplCopyWithImpl(
      _$AuthRequestImpl _value, $Res Function(_$AuthRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxId = null,
    Object? password = null,
    Object? tokenFCM = null,
  }) {
    return _then(_$AuthRequestImpl(
      taxId: null == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      tokenFCM: null == tokenFCM
          ? _value.tokenFCM
          : tokenFCM // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthRequestImpl implements _AuthRequest {
  const _$AuthRequestImpl(
      {required this.taxId, required this.password, required this.tokenFCM});

  factory _$AuthRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthRequestImplFromJson(json);

  @override
  final String taxId;
  @override
  final String password;
  @override
  final String tokenFCM;

  @override
  String toString() {
    return 'AuthRequest(taxId: $taxId, password: $password, tokenFCM: $tokenFCM)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRequestImpl &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.tokenFCM, tokenFCM) ||
                other.tokenFCM == tokenFCM));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taxId, password, tokenFCM);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRequestImplCopyWith<_$AuthRequestImpl> get copyWith =>
      __$$AuthRequestImplCopyWithImpl<_$AuthRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRequestImplToJson(
      this,
    );
  }
}

abstract class _AuthRequest implements AuthRequest {
  const factory _AuthRequest(
      {required final String taxId,
      required final String password,
      required final String tokenFCM}) = _$AuthRequestImpl;

  factory _AuthRequest.fromJson(Map<String, dynamic> json) =
      _$AuthRequestImpl.fromJson;

  @override
  String get taxId;
  @override
  String get password;
  @override
  String get tokenFCM;
  @override
  @JsonKey(ignore: true)
  _$$AuthRequestImplCopyWith<_$AuthRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
