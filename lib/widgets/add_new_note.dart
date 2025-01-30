import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:my_notes_app/models/notes_model.dart';
import 'package:my_notes_app/widgets/custom_button.dart';
import 'package:my_notes_app/widgets/custom_text_form_field.dart';
import 'package:my_notes_app/widgets/custom_vertical_space.dart';

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
      child: SingleChildScrollView(
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
              height: 20,
            ),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var noteModel = NotesModel(
                          title: title!, //?? "Untitled",
                          subTitle: subtitle!, //?? "No subtitle",
                          date: DateTime.now().toString(),
                          color: Colors.cyan.value);
                      BlocProvider.of<AddNoteCubit>(context).addnote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
            CustomVerticalSpace(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
