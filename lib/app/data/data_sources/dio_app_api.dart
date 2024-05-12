import 'package:app_auth/app/domain/app_config.dart';
import 'package:app_auth/app/domain/data_sources/app_api.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_flutter/talker_flutter.dart';

@Singleton(as: AppApi)
@dev
class DioAppApi implements AppApi {
  late final Dio dio;

  DioAppApi(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: 'http://auth.pudge-backender.org.kg',
    );

    dio = Dio(options);
    final talker = TalkerFlutter.init();
    dio.interceptors.add(TalkerDioLogger(
      talker: talker,
    ));
  }

  @override
  Future<Response> refreshToken({required String refreshToken}) {
    try {
      return dio.post("/auth/token/$refreshToken");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> singIn(
      {required String username, required String password}) {
    try {
      return dio
          .post('/login/', data: {'username': username, 'password': password});
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> singUp(
      {required String username,
      required String password,
      required String email}) {
    try {
      return dio.post('/register/', data: {
        'username': username,
        'password': password,
        'email': email,
      });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future logout({required String token}) {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future verifyEmail({required String opt}) {
    // TODO: implement verifyEmail
    throw UnimplementedError();
  }
}
