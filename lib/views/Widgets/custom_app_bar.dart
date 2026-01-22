import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/views/Widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 110,),
        Text('Notes', style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}