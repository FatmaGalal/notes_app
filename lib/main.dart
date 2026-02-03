import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/note_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NoteView(),
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'Poppins'
      ),
      
    );
  }
}
