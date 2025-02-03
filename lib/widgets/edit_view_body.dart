import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/constants/notes_list_colors.dart';
import 'package:my_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes_app/models/notes_model.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_color_item.dart';
import 'package:my_notes_app/widgets/custom_text_form_field.dart';
import 'package:my_notes_app/widgets/custom_vertical_space.dart';
import 'package:my_notes_app/widgets/edit_view_list_colors.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({
    super.key,
    required this.notesModel,
  });
  final NotesModel notesModel;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title;

  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              title: "Edit note",
              icons: Icons.done,
              onPressed: () {
                widget.notesModel.title = title ?? widget.notesModel.title;
                widget.notesModel.subTitle =
                    subtitle ?? widget.notesModel.subTitle;
                widget.notesModel.save();
                BlocProvider.of<NotesCubit>(context).feachAllNotes();
                Navigator.pop(context);
              },
            ),
            CustomVerticalSpace(),
            CustomTextFormField(
              onChanged: (value) {
                title = value;
              },
              hintText: "Title",
            ),
            CustomVerticalSpace(
              height: 20,
            ),
            CustomTextFormField(
              onChanged: (value) {
                subtitle = value;
              },
              hintText: "Conetnt",
              maxLines: 5,
            ),
            EditViewListColors(
              notesModel: widget.notesModel,
            ),
          ],
        ),
      ),
    );
  }
}
