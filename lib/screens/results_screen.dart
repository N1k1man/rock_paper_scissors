import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/widgets/heading_text.dart';

class ResultsScreen extends StatelessWidget {
  final String results;
  final void Function() onRestartTest;
  final void Function() onStatsScreen;

  const ResultsScreen({
    super.key,
    required this.results,
    required this.onRestartTest,
    required this.onStatsScreen,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              HeadingText(text: 'Результаты'),
              const SizedBox(height: 300),
              Text(
                results,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                onPressed: onRestartTest,
                child: const Text('Еще раз'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: onStatsScreen,
                child: const Text('Статистика'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
