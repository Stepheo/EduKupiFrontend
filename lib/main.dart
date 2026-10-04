import 'package:edu_kupi/constants.dart';
import 'package:edu_kupi/pages/base_page.dart';
import 'package:edu_kupi/pages/home/home_page.dart';
import 'package:edu_kupi/pages/profile/profile_page.dart';
import 'package:edu_kupi/pages/ration/ration_page.dart';
import 'package:edu_kupi/pages/recipes/recipes_page.dart';
import 'package:edu_kupi/pages/register/register_page.dart';
import 'package:edu_kupi/providers/auth_provider.dart';
import 'package:edu_kupi/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// Точка входа: оборачиваем приложение в провайдеры состояния (авторизация, тема)
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: context.watch<ThemeProvider>().theme,
    );
  }
}

// Маршруты приложения. Без авторизации всегда уводит на /register
final GoRouter _router = GoRouter(
  initialLocation: "/",
  redirect: (context, state) {
    final auth = context.read<AuthProvider>();
    if (!auth.isAuthentificated) {
      return "/register";
    }
    return null;
  },
  routes: [
    GoRoute(
      path: "/register",
      builder: (context, state) => const RegisterPage(),
    ),
    // Страницы внутри ShellRoute показываются с нижней навигацией (BasePage)
    ShellRoute(
      builder:(context, state, child) => BasePage(child: child),
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: "/recipes",
          builder: (context, state) => const RecipesPage(),
        ),
        GoRoute(
          path: "/ration",
          builder: (context, state) => const RationPage(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        )
      ]
    )
  ],
);