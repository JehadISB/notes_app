import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:my_notes_app/constants/box_name.dart';
import 'package:my_notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  late List<NotesModel> listOfNotes;
  feachAllNotes() async {
    // try {
    var noteBox = Hive.box<NotesModel>(KNoteBox);
    listOfNotes = noteBox.values.toList();
    emit(NotesSuccess());
    // debugPrint(
    //     "!! HERE YOUR NOTES: ${listOfNotes[0].title} == ${listOfNotes[1].subTitle}===${listOfNotes[0].date}");
    //return listOfNotes;
    //return listOfNotes;
    //emit(NotesSuccess(notes: listOfNotes));
    // } catch (e) {
    // emit(NotesFailure(errMessage: e.toString()));
    // }
  }
}
