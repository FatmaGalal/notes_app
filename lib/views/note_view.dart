import 'package:flutter/material.dart';
import 'package:notes_app/views/Widgets/add_note_buttom_sheet.dart';
import 'package:notes_app/views/Widgets/notes_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30),
          ),

          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return AddNoteButtomSheet();
              },
            );
          },

          child: const Icon(Icons.add),
        ),
        body: NotesBody(),
     
    );
  }
}
