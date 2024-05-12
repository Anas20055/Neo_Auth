import 'package:app_auth/app/presentation/main_app_builder.dart';
import 'package:app_auth/app/presentation/main_app_runner.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  const env = String.fromEnvironment('env', defaultValue: "dev");
  final runner = MainAppRunner(env);
  final builder = MainAppBuilder();
  runner.run(builder);
}
