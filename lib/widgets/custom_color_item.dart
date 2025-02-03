import 'package:flutter/material.dart';

class CustomColorItem extends StatelessWidget {
  const CustomColorItem(
      {super.key, required this.isSelected, required this.noteColor});
  final bool isSelected;
  final Color noteColor;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 27,
              backgroundColor: noteColor,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: noteColor,
          );
  }
}
