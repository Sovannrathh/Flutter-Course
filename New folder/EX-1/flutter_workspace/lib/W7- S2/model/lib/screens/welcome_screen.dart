import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final VoidCallback onStart;

  WelcomeScreen({required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),
      body: Center(
        child: Image.asset()
        child: ElevatedButton(
          onPressed: onStart,
          child: Text('Start Quiz'),
        ),
      ),
    );
  }
}
