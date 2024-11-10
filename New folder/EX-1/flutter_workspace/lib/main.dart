import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

enum ButtonType { primary, sencondary, disabled }

enum IconPosition { left, right }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              label: "Submit",
              icon: Icons.check,
              buttonType: ButtonType.primary,
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: "Time",
              icon: Icons.access_time,
              buttonType: ButtonType.sencondary,
              iconPosition: IconPosition.right,
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: "Account",
              icon: Icons.account_tree_outlined,
              buttonType: ButtonType.disabled,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final ButtonType buttonType;
  final IconPosition iconPosition;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.buttonType = ButtonType.primary,
    this.iconPosition = IconPosition.left,
  });

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    switch (buttonType) {
      case ButtonType.primary:
        buttonColor = Colors.blue;
        break;
      case ButtonType.sencondary:
        buttonColor = Colors.green;
      case ButtonType.disabled:
      default:
        buttonColor = Colors.grey;
    }
    return ElevatedButton(
      onPressed: buttonType == ButtonType.disabled ? null : () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: iconPosition == IconPosition.left
            ? [
                Icon(icon, color: Colors.white),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: const TextStyle(color: Colors.white),
                ),
              ]
            : [
                Text(label, style: const TextStyle(color: Colors.white)),
                const SizedBox(width: 8),
                Icon(icon, color: Colors.white),
              ],
      ),
    );
  }
}
