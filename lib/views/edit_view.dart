import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_text_form_field.dart';
import 'package:my_notes_app/widgets/custom_vertical_space.dart';
import 'package:my_notes_app/widgets/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditViewBody(),
    );
  }
}
