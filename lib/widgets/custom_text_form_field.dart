import 'package:flutter/material.dart';
import 'package:my_notes_app/constants/colors_app.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
  });
  final String? hintText;
  final int? maxLines;
  final Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        enabledBorder: CustomBorderDecoration(),
        focusedBorder: CustomBorderDecoration(),
        border: CustomBorderDecoration(),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: KPrimaryColor,
        ),
      ),
      maxLines: maxLines,
      cursorColor: KPrimaryColor,
    );
  }

  OutlineInputBorder CustomBorderDecoration() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.white));
  }
}
