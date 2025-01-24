import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  final void Function() onBack;
  final int wins;
  final int loss;
  final int draw;

  const StatsScreen(
      {super.key,
      required this.onBack,
      required this.wins,
      required this.loss,
      required this.draw});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Статистика',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Ваши Победы: $wins',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            Text(
              'Проиграно: $loss',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            Text(
              'Ничья: $draw',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: onBack,
              child: Text('Еще раз'),
            ),
          ],
        ),
      ),
    );
  }
}
