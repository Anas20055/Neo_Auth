import 'package:app_auth/app/domain/app_buider.dart';
import 'package:app_auth/app/presentation/cubit/auth_cubit.dart';
import 'package:app_auth/core/constants/app_colr.dart';
import 'package:app_auth/core/di/init_di.dart';
import 'package:app_auth/features/auth/presentation/sing_up_page/cubit/validate_password_cubit.dart';
import 'package:app_auth/features/auth/presentation/sing_up_page/sing_up_page.dart';
import 'package:app_auth/features/main/presentation/home_page/home_page.dart';
import 'package:app_auth/features/auth/presentation/login_page/login_page.dart';
import 'package:app_auth/features/auth/presentation/email_prove_page/email_prove_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app_auth/core/constants/app_routes.dart';
part '../../core/routes/routes.dart';
part '../../core/theme/theme.dart';

class MainAppBuilder implements AppBuider {
  @override
  Widget buidApp() {
    return BlocProvider(
      create: (context) => locator.get<AuthCubit>(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: _theme(),
            debugShowCheckedModeBanner: false,
            routerConfig: _router(state),
          );
        },
      ),
    );
  }
}
