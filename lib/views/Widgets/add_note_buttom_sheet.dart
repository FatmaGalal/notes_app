import 'package:flutter/material.dart';
import 'package:notes_app/views/Widgets/custom_button.dart';
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

