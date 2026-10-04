import 'package:flutter/material.dart';

class DaysSection extends StatefulWidget {
  const DaysSection({super.key});

  @override
  State<DaysSection> createState() => _DaysSectionState();
}

class _DaysSectionState extends State<DaysSection> {
  final List<String> days = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(days.length, (index) {
          final isSelected = index == selected;

          return GestureDetector(
            // Выбираем день по нажатию
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Container(
              width: 44,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).cardColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    days[index],
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: isSelected ? Colors.white : null,
                    ),
                  ),
                  Text(
                    '${12 + index}',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: isSelected ? Colors.white : null,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
