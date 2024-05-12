// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notAuthorized':
      return _AuthStateNotAuthorizied.fromJson(json);
    case 'authtorized':
      return _AuthStateAuthorizied.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authtorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authtorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authtorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorizied value) notAuthorized,
    required TResult Function(_AuthStateAuthorizied value) authtorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateNotAuthorizied value)? notAuthorized,
    TResult? Function(_AuthStateAuthorizied value)? authtorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorizied value)? notAuthorized,
    TResult Function(_AuthStateAuthorizied value)? authtorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateNotAuthoriziedImplCopyWith<$Res> {
  factory _$$AuthStateNotAuthoriziedImplCopyWith(
          _$AuthStateNotAuthoriziedImpl value,
          $Res Function(_$AuthStateNotAuthoriziedImpl) then) =
      __$$AuthStateNotAuthoriziedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateNotAuthoriziedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateNotAuthoriziedImpl>
    implements _$$AuthStateNotAuthoriziedImplCopyWith<$Res> {
  __$$AuthStateNotAuthoriziedImplCopyWithImpl(
      _$AuthStateNotAuthoriziedImpl _value,
      $Res Function(_$AuthStateNotAuthoriziedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateNotAuthoriziedImpl implements _AuthStateNotAuthorizied {
  const _$AuthStateNotAuthoriziedImpl({final String? $type})
      : $type = $type ?? 'notAuthorized';

  factory _$AuthStateNotAuthoriziedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateNotAuthoriziedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.notAuthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateNotAuthoriziedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authtorized,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authtorized,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authtorized,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorizied value) notAuthorized,
    required TResult Function(_AuthStateAuthorizied value) authtorized,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateNotAuthorizied value)? notAuthorized,
    TResult? Function(_AuthStateAuthorizied value)? authtorized,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorizied value)? notAuthorized,
    TResult Function(_AuthStateAuthorizied value)? authtorized,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateNotAuthoriziedImplToJson(
      this,
    );
  }
}

abstract class _AuthStateNotAuthorizied implements AuthState {
  const factory _AuthStateNotAuthorizied() = _$AuthStateNotAuthoriziedImpl;

  factory _AuthStateNotAuthorizied.fromJson(Map<String, dynamic> json) =
      _$AuthStateNotAuthoriziedImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthStateAuthoriziedImplCopyWith<$Res> {
  factory _$$AuthStateAuthoriziedImplCopyWith(_$AuthStateAuthoriziedImpl value,
          $Res Function(_$AuthStateAuthoriziedImpl) then) =
      __$$AuthStateAuthoriziedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity userEntity});
}

/// @nodoc
class __$$AuthStateAuthoriziedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthoriziedImpl>
    implements _$$AuthStateAuthoriziedImplCopyWith<$Res> {
  __$$AuthStateAuthoriziedImplCopyWithImpl(_$AuthStateAuthoriziedImpl _value,
      $Res Function(_$AuthStateAuthoriziedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
  }) {
    return _then(_$AuthStateAuthoriziedImpl(
      null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateAuthoriziedImpl implements _AuthStateAuthorizied {
  const _$AuthStateAuthoriziedImpl(this.userEntity, {final String? $type})
      : $type = $type ?? 'authtorized';

  factory _$AuthStateAuthoriziedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateAuthoriziedImplFromJson(json);

  @override
  final UserEntity userEntity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.authtorized(userEntity: $userEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateAuthoriziedImpl &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateAuthoriziedImplCopyWith<_$AuthStateAuthoriziedImpl>
      get copyWith =>
          __$$AuthStateAuthoriziedImplCopyWithImpl<_$AuthStateAuthoriziedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authtorized,
  }) {
    return authtorized(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authtorized,
  }) {
    return authtorized?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authtorized,
    required TResult orElse(),
  }) {
    if (authtorized != null) {
      return authtorized(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorizied value) notAuthorized,
    required TResult Function(_AuthStateAuthorizied value) authtorized,
  }) {
    return authtorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateNotAuthorizied value)? notAuthorized,
    TResult? Function(_AuthStateAuthorizied value)? authtorized,
  }) {
    return authtorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorizied value)? notAuthorized,
    TResult Function(_AuthStateAuthorizied value)? authtorized,
    required TResult orElse(),
  }) {
    if (authtorized != null) {
      return authtorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateAuthoriziedImplToJson(
      this,
    );
  }
}

abstract class _AuthStateAuthorizied implements AuthState {
  const factory _AuthStateAuthorizied(final UserEntity userEntity) =
      _$AuthStateAuthoriziedImpl;

  factory _AuthStateAuthorizied.fromJson(Map<String, dynamic> json) =
      _$AuthStateAuthoriziedImpl.fromJson;

  UserEntity get userEntity;
  @JsonKey(ignore: true)
  _$$AuthStateAuthoriziedImplCopyWith<_$AuthStateAuthoriziedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
