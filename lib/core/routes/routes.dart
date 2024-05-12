part of '../../app/presentation/main_app_builder.dart';

GoRouter _router(AuthState state) {
  return GoRouter(
    initialLocation: state.when(
      notAuthorized: () => AppRoutes.login,
      authtorized: (_) => AppRoutes.main,
    ),
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.main,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (BuildContext context, GoRouterState state) {
          return LoginPage(opt: state.uri.queryParameters['opt']);
        },
        routes: [
          GoRoute(
            path: AppRoutes.singUp,
            builder: (BuildContext context, GoRouterState state) {
              return BlocProvider(
                create: (context) => ValidatePasswordCubit(),
                child: const SingUpPage(),
              );
            },
            routes: <RouteBase>[
              GoRoute(
                name: AppRoutes.emailProve,
                path: "${AppRoutes.emailProve}/:email",
                builder: (BuildContext context, GoRouterState state) {
                  return EmailProvePage(
                    email: state.pathParameters['email']!,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
