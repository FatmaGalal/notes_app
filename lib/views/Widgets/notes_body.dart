import 'package:flutter/material.dart';import 'package:notes_app/views/Widgets/custom_app_bar.dart';
import 'package:notes_app/views/Widgets/notes_listview.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomAppBar(title: 'Notes', icon: Icons.check,onPress:(){

          }),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}