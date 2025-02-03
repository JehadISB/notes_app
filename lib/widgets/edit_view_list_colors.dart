import 'package:flutter/material.dart';
import 'package:my_notes_app/constants/notes_list_colors.dart';
import 'package:my_notes_app/models/notes_model.dart';
import 'package:my_notes_app/widgets/custom_color_item.dart';

class EditViewListColors extends StatefulWidget {
  const EditViewListColors({super.key, required this.notesModel});
  final NotesModel notesModel;
  @override
  State<EditViewListColors> createState() => _EditViewListColorsState();
}

class _EditViewListColorsState extends State<EditViewListColors> {
  late int selectedIndex = KNotesColors.indexOf(Color(widget.notesModel.color));
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: KNotesColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  widget.notesModel.color = KNotesColors[index].value;
                  setState(() {});
                },
                child: CustomColorItem(
                  noteColor: KNotesColors[index],
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
