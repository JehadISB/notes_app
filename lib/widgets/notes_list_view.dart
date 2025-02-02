import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes_app/models/notes_model.dart';
import 'package:my_notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NotesModel> notes =
            BlocProvider.of<NotesCubit>(context).listOfNotes ?? [];
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteItem(
              notesModel: notes[index],
            );
          },
        );
      },
    );
  }
}
