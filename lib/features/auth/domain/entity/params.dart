class Params {
  final String username;
  final String password;
  final String? email;

  Params({
    required this.username,
    required this.password,
    this.email,
  });
}
