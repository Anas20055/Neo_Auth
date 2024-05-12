import 'package:app_auth/app/presentation/cubit/auth_cubit.dart';
import 'package:app_auth/core/constants/app_colr.dart';
import 'package:app_auth/core/constants/app_routes.dart';
import 'package:app_auth/core/mixins/validate_mixin.dart';
import 'package:app_auth/features/auth/presentation/common_widgets/text_filed.dart';
import 'package:app_auth/features/auth/presentation/sing_up_page/cubit/validate_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SingUpPage extends StatefulWidget with CustomTextFieldValidator {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final emailController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool obscure = false;
  bool obscure2 = false;
  bool isButtonEnabled = false;
  bool isPasswordSame = true;
  @override
  void dispose() {
    emailController.dispose();
    loginController.dispose();
    passwordController.dispose();
    password2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: goBack,
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: Text(
                    'Создать аккаунт Lorby',
                    style: theme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 40),
                MyTextField(
                  hintText: 'Введи адрес почты',
                  controller: emailController,
                  onChanged: onActive,
                  validator: widget.validateEmail,
                ),
                const SizedBox(height: 14),
                MyTextField(
                  hintText: 'Придумай логин',
                  controller: loginController,
                  onChanged: onActive,
                  validator: widget.validateNotEmpty,
                ),
                const SizedBox(height: 14),
                MyTextField(
                  hintText: 'Создай пароль',
                  controller: passwordController,
                  isPassword: true,
                  obscure: obscure,
                  onPressed: onIconPressed,
                  onChanged: onChanged,
                  validator: widget.validateNotEmpty,
                ),
                passwordValidation(),
                const SizedBox(height: 14),
                MyTextField(
                  hintText: 'Повтори пароль',
                  controller: password2Controller,
                  isPassword: true,
                  obscure: obscure2,
                  onPressed: on2IconPressed,
                  onChanged: onActive,
                  validator: widget.validateNotEmpty,
                ),
                showError(
                  theme.bodySmall?.copyWith(
                    color: AppColors.red,
                  ),
                ),
                const SizedBox(height: 28),
                ElevatedButton(
                  onPressed: isButtonEnabled ? onPressed : null,
                  child: const Text('Далее'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget passwordValidation() {
    return Padding(
      padding: const EdgeInsets.only(left: 7),
      child: BlocBuilder<ValidatePasswordCubit, ValidatePasswordState>(
        builder: (context, state) {
          return Column(
            children: [
              validateText(
                text: '• От 8 до 15 символов',
                validate: state.validateEntity.validateLenght,
              ),
              validateText(
                text: '• Строчные и прописные буквы',
                validate: state.validateEntity.validateLetter,
              ),
              validateText(
                text: '• Минимум 1 цифра',
                validate: state.validateEntity.validateNumber,
              ),
              validateText(
                text: '• Минимум 1 спецсимвол (!, ", #, \$...)',
                validate: state.validateEntity.validateSymbol,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget validateText({
    required String text,
    bool? validate,
  }) {
    final theme = Theme.of(context).textTheme.bodySmall;
    return Column(
      children: [
        const SizedBox(height: 6),
        Row(
          children: [
            Text(
              text + textIconChange(validate),
              style: theme?.copyWith(
                color: textColorChange(validate),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void onChanged(String? str) {
    onActive(str);
    BlocProvider.of<ValidatePasswordCubit>(context).validatePassword(str);
  }

  String textIconChange(bool? validate) {
    if (validate == null) {
      return '';
    }
    return validate ? '✅' : '❌';
  }

  Color? textColorChange(bool? validate) {
    if (validate == null) {
      return null;
    }
    return validate ? AppColors.green : AppColors.red;
  }

  void onIconPressed() {
    setState(() {
      obscure = !obscure;
    });
  }

  Widget showError(TextStyle? style) {
    if (isPasswordSame) {
      return const SizedBox();
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 16, top: 8),
        child: Row(
          children: [
            Text(
              'Пароли не совпадают',
              style: style,
            ),
          ],
        ),
      );
    }
  }

  bool checkPassword() {
    if (passwordController.text == password2Controller.text) {
      isPasswordSame = true;
    } else {
      isPasswordSame = false;
    }
    setState(() {});
    return isPasswordSame;
  }

  void onActive(String? str) {
    if (str?.isNotEmpty == true ||
        passwordController.text.isNotEmpty ||
        emailController.text.isNotEmpty ||
        loginController.text.isNotEmpty ||
        password2Controller.text.isNotEmpty) {
      isButtonEnabled = true;
    } else {
      isButtonEnabled = false;
    }
    setState(() {});
  }

  void on2IconPressed() {
    setState(() {
      obscure2 = !obscure2;
    });
  }

  void onPressed() {
    if (_formKey.currentState?.validate() != true) {
      return;
    }
    if (!checkPassword()) {
      return;
    }
    if (!BlocProvider.of<ValidatePasswordCubit>(context)
        .state
        .validateEntity
        .isValid) {
      return;
    }
    context.read<AuthCubit>().singUp(
          email: emailController.text,
          password: passwordController.text,
          login: loginController.text,
        );
    context.goNamed(
      AppRoutes.emailProve,
      pathParameters: {"email": emailController.text},
    );
  }

  void goBack() {
    context.pop();
  }
}
