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
          children: [
            HeadingText(text: 'Выбери жест'),
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: () => onTestStarted('ножницы'),
              child: Text('Ножницы'),
            ),
            ElevatedButton(
              onPressed: () => onTestStarted('камень'),
              child: Text('Камень'),
            ),
            ElevatedButton(
              onPressed: () => onTestStarted('бумага'),
              child: Text('Бумага'),
            ),
          ],
        ),
      ),
    );
  }
}
