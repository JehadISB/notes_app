import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes_app/constants/box_name.dart';
import 'package:my_notes_app/constants/notes_list_colors.dart';
import 'package:my_notes_app/models/notes_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color noteColor = KNotesColors[0];
  addnote(NotesModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NotesModel>(KNoteBox);
      note.color = noteColor.value;
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
