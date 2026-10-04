import 'package:flutter/material.dart';

class RoundCheckbox extends StatelessWidget {
  final bool value;
  // Родитель сам хранит состояние, виджет только рисует и сообщает о нажатии
  final ValueChanged<bool> onChanged;

  const RoundCheckbox({
    super.key, 
    required this.value, 
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () => onChanged(!value),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 24, // Общий размер круглого чекбокса
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: value ? Theme.of(context).primaryColor : Colors.transparent, // Цвет внутри
            border: Border.all(
              color: value ? Theme.of(context).primaryColor : Colors.grey, // Цвет рамки
              width: 2,
            ),
          ),
          // Сама галочка — идеально по центру и адекватного размера
          child: value
              ? const Icon(
                  Icons.check,
                  fontWeight: FontWeight.w700,
                  size: 16, // Размер галочки, теперь она не будет упираться!
                  color: Colors.white,
                )
              : null,
        ),
      ),
    );
  }
}
