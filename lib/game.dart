import 'package:flutter/material.dart';
import 'dart:math';
import 'package:rock_paper_scissors/screens/home_screen.dart';
import 'package:rock_paper_scissors/screens/results_screen.dart';
import 'package:rock_paper_scissors/screens/stats_screen.dart';
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
  int wins = 0;
  int loss = 0;
  int draw = 0;

  void startTest(String userChoice) {
    setState(() {
      currentScreen = 'results';
      String computerChoice = options[random.nextInt(options.length)];
      if (userChoice == computerChoice) {
        draw += 1;
        result =
            'Вы выбрали $userChoice, компьютер выбрал $computerChoice. Ничья!';
      } else if ((userChoice == 'камень' && computerChoice == 'ножницы') ||
          (userChoice == 'ножницы' && computerChoice == 'бумага') ||
          (userChoice == 'бумага' && computerChoice == 'камень')) {
        wins += 1;
        result =
            'Вы выбрали $userChoice, компьютер выбрал $computerChoice. Вы выиграли!';
      } else {
        loss += 1;
        result =
            'Вы выбрали $userChoice, компьютер выбрал $computerChoice. Вы проиграли!';
      }
    });
  }

  void restartTest() {
    setState(() {
      currentScreen = 'home';
    });
  }

  void showStatsScreen() {
    setState(() {
      currentScreen = 'stats';
    });
  }

  void statsRestart() {
    setState(() {
      currentScreen = 'home';
      wins = 0;
      loss = 0;
      draw = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (currentScreen == 'results') {
      screen = ResultsScreen(
        results: result,
        onRestartTest: restartTest,
        onStatsScreen: showStatsScreen,
      );
    } else if (currentScreen == 'stats') {
      screen = StatsScreen(
        onBack: statsRestart,
        wins: wins,
        loss: loss,
        draw: draw,
      );
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
