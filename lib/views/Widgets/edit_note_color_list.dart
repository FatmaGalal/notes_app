
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/Widgets/colors_list_view.dart';

class EditNoteColorList extends StatefulWidget{
  const EditNoteColorList({super.key, required this.note});
 final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {

  
  late int currentIndex ;

  @override
  void initState() {
    currentIndex= kColors.indexOf(Color(widget.note.noteColor));
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.noteColor= kColors[index].toARGB32();
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: ColorItem(
                isActive: currentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
  
