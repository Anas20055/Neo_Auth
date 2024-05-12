abstract class AuthRepo {
  Future<dynamic> singUp(
      {required String password,
      required String username,
      required String email});

  Future<dynamic> singIn({
    required String password,
    required String username,
  });

  Future<dynamic> verifyEmail({
    required String opt,
  });
}
