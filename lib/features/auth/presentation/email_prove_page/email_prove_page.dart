import 'package:app_auth/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmailProvePage extends StatefulWidget {
  final String email;
  const EmailProvePage({super.key, required this.email});

  @override
  State<EmailProvePage> createState() => _EmailProvePageState();
}

class _EmailProvePageState extends State<EmailProvePage> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Text(
              'Выслали письмо со ссылкой для завершения регистрации на ${widget.email}',
              style: theme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'Если письмо не пришло, не спеши ждать совиную почту - лучше ',
                    style: theme.labelSmall,
                  ),
                  TextSpan(
                    text: 'проверь ящик “Спам”',
                    style: theme.labelSmall?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '(´｡• ω •｡`)',
              style: theme.labelSmall?.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: 224.45,
              height: 231.02,
              child: Image.asset(
                AppImages.emailConfirm,
              ),
            ),
            const SizedBox(height: 56),
            TextButton(
              onPressed: onPressed,
              child: const Text('Письмо не пришло'),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    showAlertDiolog();
  }

  void showAlertDiolog() {
    final theme = Theme.of(context).textTheme;
    AlertDialog alert = AlertDialog(
      titlePadding: const EdgeInsets.all(16),
      contentPadding: const EdgeInsets.fromLTRB(65, 8, 65, 16),
      surfaceTintColor: Colors.white,
      title: Text(
        "Мы выслали еще одно письмо на указанную тобой почту ${widget.email}",
        style: theme.labelMedium,
        textAlign: TextAlign.center,
      ),
      content: Text(
        "Не забудь проверить ящик “Спам”!11!!!!",
        style: theme.labelSmall,
        textAlign: TextAlign.center,
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Понятно!!1!'),
        ),
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void goBack() {
    context.pop();
  }
}
