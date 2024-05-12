import 'package:app_auth/features/auth/domain/entity/params.dart';
import 'package:app_auth/features/auth/domain/entity/user_entity.dart';
import 'package:app_auth/features/auth/domain/usecases/register_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

@Singleton(order: 1)
class AuthCubit extends Cubit<AuthState> {
  final RegisterUseCase registerUseCase;
  AuthCubit(this.registerUseCase) : super(const AuthState.notAuthorized());
  Future<void> singUp({
    required String email,
    required String password,
    required String login,
  }) async {
    try {
      registerUseCase.call(
          params: Params(
        username: login,
        password: password,
        email: email,
      ));
    } catch (e) {
      print(e);
    }
  }
}
