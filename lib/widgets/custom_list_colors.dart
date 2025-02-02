import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/custom_color_item.dart';

class CustomListOfColors extends StatelessWidget {
  const CustomListOfColors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return CustomColorItem();
          },
        ),
      ),
    );
  }
}
