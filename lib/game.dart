import 'package:flutter/material.dart';
import 'dart:math';
import 'package:rock_paper_scissors/screens/home_screen.dart';
import 'package:rock_paper_scissors/screens/results_screen.dart';
import 'package:rock_paper_scissors/widgets/decorated_container.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  final random = Random();
  String result = '';
  List<String> options = ['камень', 'ножницы', 'бумага'];
  String currentScreen = 'home';

  void startTest(String userChoice) {
    setState(() {
      currentScreen = 'results';
      String computerChoice = options[random.nextInt(options.length)];
      if (userChoice == 'ножницы' && computerChoice == 'ножницы') {
        result += 'Вы выбрали $userChoice, комп выбрал $computerChoice, ничья!';
      } else {
        result += 'asd';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (currentScreen == 'results') {
      screen = ResultsScreen();
    } else {
      screen = HomeScreen(onTestStarted: startTest);
    }

    return MaterialApp(
      home: Scaffold(
        body: DecoratedContainer(child: screen),
      ),
    );
  }
}
