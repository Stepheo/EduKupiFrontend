import 'package:edu_kupi/pages/ration/days_section.dart';
import 'package:edu_kupi/pages/ration/top_section.dart';
import 'package:flutter/material.dart';

class RationPage extends StatelessWidget {
  const RationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
      child: Column(
        children: [
          // Заголовок
          const TopSection(),
          // Дни недели
          const DaysSection(),
        ],
      ),
    );
  }
}
