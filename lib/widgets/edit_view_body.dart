import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_text_form_field.dart';
import 'package:my_notes_app/widgets/custom_vertical_space.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit note",
            icons: Icons.done,
          ),
          CustomVerticalSpace(),
          CustomTextFormField(
            hintText: "Title",
          ),
          CustomVerticalSpace(
            height: 20,
          ),
          CustomTextFormField(
            hintText: "Conetnt",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
