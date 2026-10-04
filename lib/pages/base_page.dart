import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  const BasePage({super.key, required this.child});

  // Определяем активную вкладку по текущему адресу, чтобы подсветить её в меню
  int _getIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;

    if (location.startsWith('/recipes')) return 1;
    if (location.startsWith('/ration')) return 2;
    if (location.startsWith('/profile')) return 3;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: NavigationBar(
        // Переход на нужную страницу по нажатию на вкладку
        onDestinationSelected: (value) {
          switch (value) {
            case 0:
              context.go('/');
              break;
            case 1:
              context.go('/recipes');
              break;
            case 2:
              context.go('/ration');
              break;
            case 3:
              context.go('/profile');
              break;
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Главная'
          ),NavigationDestination(
            icon: Icon(Icons.restaurant_menu_outlined),
            selectedIcon: Icon(Icons.restaurant_menu),
            label: 'Рецепты'
          ),NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            selectedIcon: Icon(Icons.shopping_cart),
            label: 'Рацион'
          ),NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Профиль'
          ),
        ],
        selectedIndex: _getIndex(context),
      ),
    );
  }
}