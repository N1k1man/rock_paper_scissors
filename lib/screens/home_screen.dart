import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/widgets/heading_text.dart';

class HomeScreen extends StatelessWidget {
  final Function(String) onTestStarted;

  const HomeScreen({super.key, required this.onTestStarted});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeadingText(text: 'Выбери жест'),
            const SizedBox(height: 50),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => onTestStarted('ножницы'),
                child: const Text('Ножницы'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => onTestStarted('камень'),
                child: const Text('Камень'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => onTestStarted('бумага'),
                child: const Text('Бумага'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
