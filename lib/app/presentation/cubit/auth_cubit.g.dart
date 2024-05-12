// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateNotAuthoriziedImpl _$$AuthStateNotAuthoriziedImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthStateNotAuthoriziedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateNotAuthoriziedImplToJson(
        _$AuthStateNotAuthoriziedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateAuthoriziedImpl _$$AuthStateAuthoriziedImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthStateAuthoriziedImpl(
      UserEntity.fromJson(json['userEntity'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateAuthoriziedImplToJson(
        _$AuthStateAuthoriziedImpl instance) =>
    <String, dynamic>{
      'userEntity': instance.userEntity,
      'runtimeType': instance.$type,
    };
