import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/add_new_note.dart';
import 'package:my_notes_app/widgets/custom_button.dart';
import 'package:my_notes_app/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: AddNewNote(),
    );
  }
}
