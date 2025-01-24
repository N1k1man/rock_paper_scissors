import 'package:flutter/material.dart';

class DecoratedContainer extends StatelessWidget {
  final Widget child;
  const DecoratedContainer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.deepPurple.shade300, Colors.deepPurple.shade50],
        ),
      ),
      child: child,
    );
  }
}
