import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
 final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(note: note,);
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 26, bottom: 26, left: 24, right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.noteColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                minVerticalPadding: 24,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    note.title,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.all(0),
                subtitle: Text(
                  note.subtitle,
                  style: TextStyle(fontSize: 18),
                ),
                iconColor: Colors.black87,
                textColor: Colors.black45,
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(FontAwesomeIcons.trash),
                  iconSize: 26,
                  color: Colors.black87,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 16),
                child: Text(
                  note.date,
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
