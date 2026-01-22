import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/views/Widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
  
    return Column(
      children: [
        SizedBox(height: 60,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
         
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Notes', style: TextStyle(fontSize: 28)),
            Spacer(),
            CustomSearchIcon(icon: icon,),
          ],
        ),
       SizedBox(height:6,),
      ],
    );
  }
}