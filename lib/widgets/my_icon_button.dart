import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 80,
      ),
    );
  }
}
