import 'package:flutter/material.dart';

class CustomVerticalSpace extends StatelessWidget {
  const CustomVerticalSpace({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 15,
    );
  }
}
