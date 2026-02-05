import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/Widgets/custom_button.dart';
import 'package:notes_app/views/Widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  AddNoteForm({super.key});
  
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled; 
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(hint: 'Title', maxLines: 1, onSaved: (value)
          {
            title=value;
          },),
          SizedBox(height: 16),
          CustomTextField(hint: 'Body', maxLines: 8, onSaved: (value)
          {
            subTitle=value;
          },),
          SizedBox(height: 24),
          BlocBuilder<AddNoteCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomButton( 
                      isLoading: state is AddNoteLoading? true: false,
                      onTap: (){
          
                      if(formkey.currentState!.validate())
                      {
                        formkey.currentState!.save();
                        var noteModel= NoteModel(title: title!, subtitle: subTitle!, date: DateTime.now().toString(), noteColor: Colors.blue.toARGB32());
                         BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                      }
                      autovalidateMode=AutovalidateMode.always;
                      setState(() {
                        
                      });
                      
                    },);
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}