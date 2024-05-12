import 'package:app_auth/core/constants/app_colr.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final String hintText;
  final TextEditingController controller;
  final VoidCallback? onPressed;
  final bool obscure;
  final bool isPassword;
  final void Function(String)? onChanged;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscure = false,
    this.validator,
    this.onChanged,
    this.onPressed,
    this.isPassword = false,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorErrorColor: AppColors.black,
      cursorColor: AppColors.black,
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Colors.black,
          ),
      onChanged: onChanged,
      decoration: InputDecoration(
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: AppColors.lightGrey,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: AppColors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.black, width: 1.1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.black, width: 1.1),
          ),
          errorStyle: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.red),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.labelSmall,
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    obscure
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppColors.grey,
                  ),
                  onPressed: onPressed,
                )
              : null),
      validator: validator,
      controller: controller,
      obscureText: obscure,
      obscuringCharacter: '*',
    );
  }
}
