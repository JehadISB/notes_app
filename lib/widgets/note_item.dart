import 'package:flutter/material.dart';
import 'package:my_notes_app/views/edit_view.dart';
import 'package:my_notes_app/widgets/custom_icon_buttom.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange[100],
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "FLutter tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(right: 20, top: 16, bottom: 16),
                child: Text(
                  "Build Your Career with jehad Irahim",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              trailing: Wrap(
                children: [
                  CustomIconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditView()),
                      );
                    },
                    icon: Icons.edit,
                  ),
                  CustomIconButton(
                    onPressed: () {},
                    icon: Icons.delete,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text("May 12.5.2025",
                  style: TextStyle(
                    color: Colors.grey,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
