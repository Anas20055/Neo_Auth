import 'package:app_auth/core/mixins/validate_mixin.dart';
import 'package:app_auth/features/auth/domain/entity/validate_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_password_state.dart';
part 'validate_password_cubit.freezed.dart';

class ValidatePasswordCubit extends Cubit<ValidatePasswordState>
    with CustomTextFieldValidator {
  ValidatePasswordCubit()
      : super(
          ValidatePasswordState.initial(
            ValidateEntity(isValid: false),
          ),
        );
  void validatePassword(String? password) {
    emit(
      ValidatePasswordState.initial(
        ValidateEntity(
            validateLenght: validateLength(password),
            validateLetter: validateContainsLowerAndUpperCase(password),
            validateNumber: validateContainsNumber(password),
            validateSymbol: validateContainsSpecialSymbol(password),
            isValid: (validateLength(password) ?? false) &&
                (validateContainsLowerAndUpperCase(password) ?? false) &&
                (validateContainsNumber(password) ?? false) &&
                (validateContainsSpecialSymbol(password) ?? false)),
      ),
    );
  }
}
