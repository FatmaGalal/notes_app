import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/Widgets/custom_app_bar.dart';
import 'package:notes_app/views/Widgets/notes_listview.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: [
          CustomAppBar(icon: Icons.search,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}