import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({
    super.key,
    this.onPressed,
    this.icons,
  });
  final void Function()? onPressed;
  final IconData? icons;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icons ?? Icons.search,
              color: Colors.white,
            )),
      ),
    );
  }
}
