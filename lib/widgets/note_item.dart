import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes_app/models/notes_model.dart';
import 'package:my_notes_app/views/edit_view.dart';
import 'package:my_notes_app/widgets/custom_icon_buttom.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notesModel});
  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Color(notesModel.color),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                notesModel.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(right: 20, top: 16, bottom: 16),
                child: Text(
                  notesModel.subTitle,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              trailing: Wrap(
                children: [
                  CustomIconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditView(
                                  notesModel: notesModel,
                                )),
                      );
                    },
                    icon: Icons.edit,
                  ),
                  CustomIconButton(
                    onPressed: () {
                      notesModel.delete();
                      BlocProvider.of<NotesCubit>(context).feachAllNotes();
                    },
                    icon: Icons.delete,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(notesModel.date,
                  style: const TextStyle(
                    color: Colors.grey,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
