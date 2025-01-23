import 'package:flutter/material.dart';
import 'package:my_notes_app/constants/colors_app.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: KPrimaryColor, borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: const Center(
        child: Text(
          "Add",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}
