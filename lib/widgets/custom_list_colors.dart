import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/constants/notes_list_colors.dart';
import 'package:my_notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:my_notes_app/widgets/custom_color_item.dart';

class CustomListOfColors extends StatefulWidget {
  const CustomListOfColors({
    super.key,
  });

  @override
  State<CustomListOfColors> createState() => _CustomListOfColorsState();
}

class _CustomListOfColorsState extends State<CustomListOfColors> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: notesColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).noteColor =
                      notesColors[index];
                  setState(() {});
                },
                child: CustomColorItem(
                  noteColor: notesColors[index],
                  isSelected: selectedIndex == index,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
