import 'package:flutter/material.dart';

class RecipesSection extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Пока рецепты заглушки, потом брать с сервера
    final recipes = [
      ['Овсянка с ягодами и орехами', '420'],
      ['Куриная грудка с киноа и овощами', '520'],
      ['Овощной крем-суп', '310'],
      ['Паста с креветками и шпинатом', '440'],
    ];

    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: 16),
        itemCount: recipes.length, 
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 220, // Немного увеличили высоту для вмещения иконки
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Изображение рецепта
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  child: Image.asset(
                    'assets/images/recipe.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 110,
                  ),
                ),
                
                // Информационная часть карточки
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, right: 12, left: 12, bottom: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Название рецепта
                        Text(
                          recipes[index][0],
                          style: Theme.of(context).textTheme.titleSmall,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        
                        // Калории и Кнопка "Избранное"
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${recipes[index][1]} ккал',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            // Уменьшили visualDensity, чтобы кнопка не распирала контейнер
                            IconButton(
                              visualDensity: VisualDensity.comfortable,
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              icon: const Icon(Icons.favorite_outline, size: 20),
                              onPressed: () {
                                // Клик по сердечку
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}