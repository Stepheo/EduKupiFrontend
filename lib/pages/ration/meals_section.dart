import 'package:flutter/material.dart';

class MealsSection extends StatelessWidget {
  const MealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Пока блюда заглушки, потом брать с сервера
    final meals = [
      ['Завтрак', 'Овсянка с ягодами и орехами'],
      ['Обед', 'Куриная грудка с киноа и овощами'],
      ['Ужин', 'Овощной крем-суп с тостами'],
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 12, bottom: 4),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Theme.of(context).cardColor,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/img-${index + 1}.png',
                    width: 90,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          meals[index][0].toUpperCase(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          meals[index][1],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                const Icon(Icons.chevron_right),
              ],
            ),
          );
        },
      ),
    );
  }
}
