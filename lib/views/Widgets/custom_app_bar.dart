import 'package:flutter/material.dart';
import 'package:notes_app/views/Widgets/custom_search_icon.dart';
import 'package:notes_app/views/Widgets/custom_text_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar( {super.key, required this.icon, required this.title,this.onPress, this.isSearch= false, this.onTextChanged,});
  final IconData icon;
  final String title;
  final bool isSearch;
  final void Function()? onPress;
  final void Function(String?)? onTextChanged;
  @override
  Widget build(BuildContext context) {
  
   
    return Column(
      children: [
        SizedBox(height: 60,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 28)),
            
            isSearch? Expanded(
             
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomTextField(hint: 'Search', onChanged: onTextChanged, ),
              )): Spacer(),
            CustomSearchIcon(onPress, icon: icon)
          ],
        ),
       SizedBox(height:6,),
      ],
    );
  }
}