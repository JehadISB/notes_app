import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/custom_search_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.icons,
  });
  final String title;
  final IconData? icons;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 24),
          ),
          CustomSearchButton(
            icons: icons,
          ),
        ],
      ),
    );
  }
}
