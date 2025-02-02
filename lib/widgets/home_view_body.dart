import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/notes_list_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).feachAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(
            title: "Notes",
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
