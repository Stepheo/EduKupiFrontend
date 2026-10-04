import 'package:edu_kupi/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Тема',
              ),
              // Изменение темы
              DropdownButton(
                value: themeProvider.theme,
                onChanged: (value) {
                  themeProvider.setTheme(value!);
                },
                items: const [
                  DropdownMenuItem(value: ThemeMode.system, child: Text('Системная')),
                  DropdownMenuItem(value: ThemeMode.light, child: Text('Светлая')),
                  DropdownMenuItem(value: ThemeMode.dark, child: Text('Темная')),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}