mixin CustomTextFieldValidator {
  String? validateNotEmpty(String? value) {
    if (value?.isEmpty == true) {
      return 'Заполните все обязательные поля';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value?.isEmpty == true) {
      return 'Заполните все обязательные поля';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)) {
      return 'Неверный формат электронной почты';
    }
    return null;
  }

  bool? validateLength(String? value) {
    if (value?.isEmpty == true) {
      return null;
    } else if (value!.length < 8 || value.length > 15) {
      return false;
    } else if (value.length > 8 || value.length < 15) {
      return true;
    }
    return null;
  }

  bool? validateContainsNumber(String? value) {
    if (value?.isEmpty == true) {
      return null;
    } else if (RegExp(r'[0-9]').hasMatch(value!)) {
      return true;
    } else if (!RegExp(r'[0-9]').hasMatch(value)) {
      return false;
    }
    return null;
  }

  bool? validateContainsSpecialSymbol(String? value) {
    if (value?.isEmpty == true) {
      return null;
    } else if (RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(value!)) {
      return true;
    } else if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return false;
    }
    return null;
  }

  bool? validateContainsLowerAndUpperCase(String? value) {
    if (value?.isEmpty == true) {
      return null;
    } else if (RegExp(r'^(?=.*[a-z])(?=.*[A-Z])').hasMatch(value!)) {
      return true;
    } else if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])').hasMatch(value)) {
      return false;
    }
    return null;
  }
}
