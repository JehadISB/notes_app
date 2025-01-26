import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/custom_button.dart';
import 'package:my_notes_app/widgets/custom_text_form_field.dart';

class AddNewNote extends StatefulWidget {
  const AddNewNote({
    super.key,
  });
  @override
  State<AddNewNote> createState() => _AddNewNoteState();
}

class _AddNewNoteState extends State<AddNewNote> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title;
  String? subtitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            hintText: "Title",
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            onSaved: (value) {
              subtitle = value;
            },
            hintText: "Content",
            maxLines: 5,
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
