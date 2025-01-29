import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:my_notes_app/widgets/add_new_note.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
            if (state is AddNoteFailure) {
              print("Failed , ${state.errMessage}");
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,
                child: AddNewNote());
          },
        ),
      ),
    );
  }
}
