abstract class AppApi {
  Future<dynamic> singIn({
    required String username,
    required String password,
  });

  Future<dynamic> singUp(
      {required String username,
      required String password,
      required String email});
  Future<dynamic> refreshToken({
    required String refreshToken,
  });
  Future<dynamic> verifyEmail({
    required String opt,
  });

  Future<dynamic> logout({
    required String token,
  });
}
