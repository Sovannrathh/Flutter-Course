import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          CustomCard(
            Text: 'OOP',
            Color(Colors.blue[100]),
          ),
          CustomCard(
            Text: 'Dart',
            Color(Colors.blue[600]),
          ),
          CustomCard(
            Text: 'Flutter',
            Color(Colors.blue[600]),
          ),
        ],
      ),
    ),
  ));
}

class CustomCard extends StatelessWidget {
  const CustomCard(this.text, this.color);
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          decoration: TextDecoration.none,
          fontSize: 20,
        ),
      ),
    );
  }
}
