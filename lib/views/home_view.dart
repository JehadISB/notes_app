import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes_app/widgets/add_bottom_sheet.dart';
import 'package:my_notes_app/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
          body: const HomeViewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  context: context,
                  builder: (builder) {
                    return const AddNoteBottomSheet();
                  });
            },
            child: const Icon(Icons.assignment_add),
            // backgroundColor: Color(KPrimaryColor as int),
          )),
    );
  }
}
