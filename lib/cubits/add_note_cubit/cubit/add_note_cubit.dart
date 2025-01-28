import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes_app/constants/box_name.dart';
import 'package:my_notes_app/models/notes_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addnote(NotesModel note) {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NotesModel>(KNoteBox);
      emit(AddNoteSuccess());
      noteBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
