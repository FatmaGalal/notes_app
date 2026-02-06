import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.maxLines=1,required this.hint, this.onSaved, this.onChanged});
  final int maxLines;
  final String hint;
  final void Function( String?)? onSaved;
  final void Function( String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty??true)
        {
          return 'This Field is required';
        }
        else 
        {
          return null;
        }
      },
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
