import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes_app/constants/box_name.dart';
import 'package:my_notes_app/views/home_view.dart';

void main() async {
  runApp(const MyNotesApp());
  await Hive.initFlutter();
  await Hive.openBox(noteBox);
}

class MyNotesApp extends StatelessWidget {
  const MyNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Poppins",
          useMaterial3: false),
    );
  }
}
