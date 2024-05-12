import 'package:app_auth/features/auth/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.username,
    required super.email,
    super.accessToken,
    super.refreshToken,
  });
}
