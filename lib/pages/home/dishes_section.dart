import 'package:edu_kupi/pages/home/round_checkbox.dart';
import 'package:flutter/material.dart';

class DishesSection extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // Пока показываем 3 блюда-заглушки, потом заменить данными с сервера
        itemCount: 3,
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
                        'Завтрак'.toUpperCase(),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        'Овсянка с ягодами и орехами asdasdasd',
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '420 ккал',
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