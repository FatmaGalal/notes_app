import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/Widgets/custom_app_bar.dart';
import 'package:notes_app/views/Widgets/custom_text_field.dart';
import 'package:notes_app/views/Widgets/edit_note_color_list.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: 'Edit Note',
          icon: Icons.check,
          onPress: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subtitle = title ?? widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
        ),
        SizedBox(height: 12),
    
        CustomTextField(
          hint: widget.note.title,
          text: widget.note.title,
          onChanged: (value) {
            title = value;
          },
        ),
    
        SizedBox(height: 6),
        CustomTextField(
          
          hint: widget.note.subtitle,
          text:widget.note.subtitle,
          maxLines: 10,
          onChanged: (value) {
            subTitle = value;
          },
        ),
        SizedBox(height: 12),

        EditNoteColorList(note: widget.note),
        // CustomButton(),
      ],
    );
  }
}
