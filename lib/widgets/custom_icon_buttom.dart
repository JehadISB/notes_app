import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.color,
  });
  final void Function()? onPressed;
  final IconData icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: color ?? Colors.black,
      iconSize: 32,
    );
  }
}
