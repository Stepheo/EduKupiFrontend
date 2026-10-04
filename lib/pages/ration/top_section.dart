import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text("Мой рацион", style: Theme.of(context).textTheme.headlineLarge),
    );
  }
}
