import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/views/Widgets/add_note_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteFailer) {}
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          
          builder: (context, state) {
            return
               AbsorbPointer(
                absorbing: state is AddNoteLoading? true : false,
                child: SingleChildScrollView(child:  AddNoteForm()));
           
          },
        ),
      ),
    );
  }
}
