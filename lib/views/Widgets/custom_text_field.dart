import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.maxLines=1,required this.hint});
  final int maxLines;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder: builderBorder(kPrimaryColor),
        enabledBorder: builderBorder(),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      
    );
  }


  OutlineInputBorder builderBorder([color]) {
    
    return OutlineInputBorder(
      borderSide: BorderSide(color: color?? Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
