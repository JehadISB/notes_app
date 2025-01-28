import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes_app/constants/box_name.dart';
import 'package:my_notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:my_notes_app/models/notes_model.dart';
import 'package:my_notes_app/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(KNoteBox);
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const MyNotesApp());
}

class MyNotesApp extends StatelessWidget {
  const MyNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
        theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: "Poppins",
            useMaterial3: false),
      ),
    );
  }
}
