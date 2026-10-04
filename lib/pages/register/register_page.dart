import 'package:edu_kupi/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "Твой рацион. Рецепты. Продукты.".toUpperCase(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/register.png',
                  fit: BoxFit
                      .cover, // Помогает картинке правильно заполнить контейнер
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                "Планируй питание под свои цели, "
                "выбирай рецепты и сразу собирай список "
                "продуктов для покупки.",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: FilledButton(
                onPressed: () {
                  // Пока без регистрации: просто считаем пользователя вошедшим
                  context.read<AuthProvider>().isAuthentificated = true;
                  context.go('/');
                },
                child: Text(
                  'Начать',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
            Text(
              "У меня уже есть аккаунт",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).primaryColor,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
