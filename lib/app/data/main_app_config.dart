import 'package:app_auth/app/domain/app_config.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AppConfig)
@prod
class ProdAppConfig implements AppConfig {
  @override
  String get baseUrl => 'https://pub.dev';

  @override
  String get host => Environment.prod;
}

@Singleton(as: AppConfig)
@test
class MockAppConfig implements AppConfig {
  @override
  String get baseUrl => 'https://pub.dev';

  @override
  String get host => Environment.test;
}

@Singleton(as: AppConfig)
@dev
class DevAppConfig implements AppConfig {
  @override
  String get baseUrl => 'http://auth.pudge-backender.org.kg';

  @override
  String get host => Environment.dev;
}
