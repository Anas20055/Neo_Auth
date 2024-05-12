import 'package:app_auth/app/presentation/cubit/auth_cubit.dart';
import 'package:app_auth/core/constants/app_colr.dart';
import 'package:app_auth/core/constants/app_images.dart';
import 'package:app_auth/core/constants/app_routes.dart';
import 'package:app_auth/core/mixins/validate_mixin.dart';
import 'package:app_auth/features/auth/presentation/common_widgets/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget with CustomTextFieldValidator {
  final String? opt;
  const LoginPage({super.key, this.opt});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool obsecure = false;
  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void onPressed() {
    setState(() {
      obsecure = !obsecure;
    });
  }

  @override
  void initState() {
    super.initState();
    printID();
  }

  @override
  void didUpdateWidget(LoginPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.opt != oldWidget.opt) {
      printID();
    }
  }

  void printID() {
    if (widget.opt != null) {
      print(widget.opt);
    } else {
      print('ID is null');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 186.93,
                    height: 194.15,
                    child: Image.asset(AppImages.globus),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Вэлком бэк!',
                    style: theme.labelLarge,
                  ),
                  const SizedBox(height: 32),
                  MyTextField(
                    hintText: 'Введи туда-сюда логин',
                    controller: loginController,
                    validator: widget.validateNotEmpty,
                  ),
                  const SizedBox(height: 14),
                  MyTextField(
                    hintText: 'Пароль (тоже введи)',
                    controller: passwordController,
                    isPassword: true,
                    onPressed: onPressed,
                    obscure: obsecure,
                    validator: widget.validateNotEmpty,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: onButtonPressed,
                    child: const Text('Войти'),
                  ),
                  const SizedBox(height: 28),
                  TextButton(
                    onPressed: onSecondButtonPressed,
                    child: const Text('У меня еще нет аккаунта'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SnackBar customSnackBar({
    Color color = AppColors.red,
    required String text,
  }) {
    return SnackBar(
      shape: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        borderSide: BorderSide(color: color),
      ),
      content: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.white,
      dismissDirection: DismissDirection.up,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 150,
        left: 16,
        right: 16,
      ),
    );
  }

  void onButtonPressed() {
    context.read<AuthCubit>().singUp(email: 'sf', password: 'sf', login: 'sf');
    // if (_formKey.currentState?.validate() == true) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     customSnackBar(
    //       text: 'Неверный логин или пароль',
    //     ),
    //   );
    // }
  }

  void onSecondButtonPressed() {
    context.go(AppRoutes.navigateToSingUp);
  }
}
