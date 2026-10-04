import 'package:edu_kupi/pages/recipes/top_section.dart';
import 'package:edu_kupi/pages/recipes/recipes_section.dart';
import 'package:edu_kupi/pages/recipes/search_section.dart';
import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
      child: Column(
        children: [
          // Заголовок и настройки
          const TopSection(),
          // Поле поиска
          const SearchSection(),
          // Сетка рецептов
          const RecipesSection(),
        ],
      ),
    );
  }
}