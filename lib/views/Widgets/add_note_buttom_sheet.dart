import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/Widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CustomTextField(hint: 'Title', maxLines: 1),
              SizedBox(height: 16),
              CustomTextField(hint: 'Body', maxLines: 8),
              SizedBox(height: 24),
              CustomButton(),
              SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
     
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
       color: kPrimaryColor,
       
      ),
      child: Center(
        child: Text(
          'Add Note',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      
    );
  }
}
