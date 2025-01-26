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
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: "Title",
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            hintText: "Content",
            maxLines: 5,
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
