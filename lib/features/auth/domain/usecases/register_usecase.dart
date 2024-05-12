// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_auth/core/usecase/usecase.dart';
import 'package:app_auth/features/auth/domain/entity/params.dart';
import 'package:app_auth/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class RegisterUseCase implements UseCases<dynamic, Params> {
  final AuthRepo _authRepo;
  RegisterUseCase(
    this._authRepo,
  );

  @override
  Future<dynamic> call({Params? params}) {
    return _authRepo.singUp(
      password: params!.password,
      username: params.username,
      email: params.email!,
    );
  }
}
