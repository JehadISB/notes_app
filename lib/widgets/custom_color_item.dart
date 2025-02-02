import 'package:flutter/material.dart';

class CustomColorItem extends StatelessWidget {
  const CustomColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Colors.orange[200],
    );
  }
}
