import 'package:app_auth/core/constants/app_images.dart';
import 'package:app_auth/core/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 162),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Добро пожаловать!',
                style: theme.labelLarge,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Lorby - твой личный репетитор',
            style: theme.labelMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 48),
          SizedBox(
            width: 296.4,
            child: Image.asset(AppImages.illustration),
          ),
          const SizedBox(height: 114),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: TextButton(
              onPressed: showAlertDiolog,
              child: const Text('Выйти'),
            ),
          ),
        ],
      ),
    );
  }

  void showAlertDiolog() {
    final theme = Theme.of(context).textTheme;
    AlertDialog alert = AlertDialog(
      titlePadding: const EdgeInsets.all(16),
      contentPadding: const EdgeInsets.fromLTRB(65, 8, 65, 16),
      surfaceTintColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Выйти?",
            style: theme.labelMedium,
          ),
        ],
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Точно выйти?",
            style: theme.labelSmall,
          ),
        ],
      ),
      actions: [
        Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.login);
              },
              child: const Text('Да, точно'),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: const Text('Нет, остаться'),
            ),
          ],
        )
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
