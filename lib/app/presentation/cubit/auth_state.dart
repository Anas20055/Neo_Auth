part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.notAuthorized() = _AuthStateNotAuthorizied;
  const factory AuthState.authtorized(UserEntity userEntity) =
      _AuthStateAuthorizied;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
