import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:my_notes_app/constants/box_name.dart';
import 'package:my_notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  feachAllNotes() async {
    try {
      var noteBox = Hive.box<NotesModel>(KNoteBox);
      List<NotesModel> listOfNotes = noteBox.values.toList();
      emit(NotesSuccess(notes: listOfNotes));
    } catch (e) {
      emit(NotesFailure(errMessage: e.toString()));
    }
  }
}
