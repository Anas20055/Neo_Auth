// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_auth/app/data/data_sources/dio_app_api.dart' as _i6;
import 'package:app_auth/app/data/main_app_config.dart' as _i4;
import 'package:app_auth/app/domain/app_config.dart' as _i3;
import 'package:app_auth/app/domain/data_sources/app_api.dart' as _i5;
import 'package:app_auth/app/presentation/cubit/auth_cubit.dart' as _i10;
import 'package:app_auth/features/auth/data/repository/auth_repo_imp.dart'
    as _i8;
import 'package:app_auth/features/auth/domain/repository/auth_repo.dart' as _i7;
import 'package:app_auth/features/auth/domain/usecases/register_usecase.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppConfig>(
      () => _i4.MockAppConfig(),
      registerFor: {_test},
    );
    gh.singleton<_i3.AppConfig>(
      () => _i4.DevAppConfig(),
      registerFor: {_dev},
    );
    gh.singleton<_i3.AppConfig>(
      () => _i4.ProdAppConfig(),
      registerFor: {_prod},
    );
    gh.singleton<_i5.AppApi>(
      () => _i6.DioAppApi(gh<_i3.AppConfig>()),
      registerFor: {_dev},
    );
    gh.factory<_i7.AuthRepo>(
      () => _i8.NetworkAuthRepositiry(api: gh<_i5.AppApi>()),
      registerFor: {_dev},
    );
    gh.factory<_i9.RegisterUseCase>(
        () => _i9.RegisterUseCase(gh<_i7.AuthRepo>()));
    gh.singleton<_i10.AuthCubit>(
        () => _i10.AuthCubit(gh<_i9.RegisterUseCase>()));
    return this;
  }
}
