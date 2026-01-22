import 'package:flutter/material.dart';
import 'package:notes_app/views/Widgets/custom_app_bar.dart';
import 'package:notes_app/views/Widgets/custom_button.dart';
import 'package:notes_app/views/Widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(child:  Column(children: 
    [
      CustomAppBar(icon:  Icons.check,),
      SizedBox(height: 12,),
      CustomTextField(hint: 'Title'),
      SizedBox(height: 6,),
      CustomTextField(hint: 'Body', maxLines: 10,),
      SizedBox(height: 12,),
      CustomButton(),
    ]));
  }
}
