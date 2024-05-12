import 'package:app_auth/app/domain/app_buider.dart';

abstract class AppRunner {
  Future<void> preloadData();
  Future<void> run(AppBuider buider);
}
