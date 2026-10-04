import 'package:edu_kupi/pages/home/round_checkbox.dart';
import 'package:flutter/material.dart';

class DishesSection extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    // Пока блюда заглушки, потом брать с сервера
    final dishes = [
      ['Завтрак', 'Овсянка с ягодами и орехами', '420'],
      ['Обед', 'Куриная грудка с киноа и овощами', '520'],
      ['Ужин', 'Овощной крем-суп с тостами', '310'],
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: dishes.length,
        itemBuilder: (BuildContext context, int index) { 
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Theme.of(context).cardColor,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor, // Цвет тени
                  spreadRadius: 2, // Радиус распространения
                  blurRadius: 8, // Степень размытия
                  offset: Offset(0, 4), // Смещение по осям X и Y
                ),
              ],
            ),
            width: double.infinity,
            height: 100,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/img-${index + 1}.png',
                      width: 76.0,
                      height: 76.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dishes[index][0].toUpperCase(),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        dishes[index][1],
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${dishes[index][2]} ккал',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.normal
                        ),
                      )
                    ],
                  ),
                ),
                RoundCheckbox(
                  value: true,
                  onChanged: (value) {}
                )
              ],
            ),
          );
        },
      ),
    );
  }
}