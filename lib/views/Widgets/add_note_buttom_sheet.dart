import 'package:flutter/material.dart';
import 'package:notes_app/views/Widgets/custom_button.dart';
import 'package:notes_app/views/Widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(16), child: AddNoteForm()),
    );
  }
}

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
          CustomButton( onTap: (){
            if(formkey.currentState!.validate())
            {
              formkey.currentState!.save();
            }
            autovalidateMode=AutovalidateMode.always;
            setState(() {
              
            });
            
          },),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}