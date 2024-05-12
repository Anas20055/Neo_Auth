import 'package:app_auth/app/domain/data_sources/app_api.dart';
import 'package:app_auth/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
@dev
class NetworkAuthRepositiry implements AuthRepo {
  final AppApi api;

  NetworkAuthRepositiry({required this.api});
  @override
  Future<void> singIn({
    required String username,
    required String password,
  }) async {
    try {
      // ignore: unused_local_variable
      final response = await api.singIn(username: username, password: password);
      return;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> singUp({
    required String username,
    required String password,
    required String email,
  }) async {
    final response = await api.singUp(
      username: username,
      password: password,
      email: email,
    );
    return response.toString();
  }

  @override
  Future verifyEmail({required String opt}) {
    // TODO: implement verifyEmail
    throw UnimplementedError();
  }
}
