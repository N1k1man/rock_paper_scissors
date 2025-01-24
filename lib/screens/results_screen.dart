import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/widgets/heading_text.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
      child: Column(
        children: [
          HeadingText(
            text: 'Результаты',
          )
        ],
      ),
    ));
  }
}
