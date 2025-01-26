import 'package:flutter/material.dart';
import 'package:my_notes_app/constants/colors_app.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });
  final String? hintText;
  final int? maxLines;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true){

        }
      },
      decoration: InputDecoration(
        enabledBorder: CustomBorderDecoration(),
        focusedBorder: CustomBorderDecoration(),
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
