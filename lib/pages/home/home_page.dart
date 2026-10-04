import 'package:edu_kupi/pages/home/dishes_section.dart';
import 'package:edu_kupi/pages/home/top_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TopSection(),
        const DishesSection(),
        Padding(
          padding: const EdgeInsets.all(20),
          child: FilledButton(
            onPressed: () {}, 
            child: Text('Посмотреть все блюда'),
          ),
        )
      ],
    );
  }
}