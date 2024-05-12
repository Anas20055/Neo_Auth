import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String username;
  final String email;
  final String? refreshToken;
  final String? accessToken;

  const UserEntity({
    required this.username,
    required this.email,
    this.refreshToken,
    this.accessToken,
  });

  @override
  List<Object?> get props => [
        username,
        email,
        refreshToken,
        accessToken,
      ];
  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      username: json['username'] as String,
      email: json['email'] as String,
      refreshToken: json['refreshToken'] as String?,
      accessToken: json['accessToken'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['refreshToken'] = refreshToken;
    data['accessToken'] = accessToken;
    return data;
  }
}
