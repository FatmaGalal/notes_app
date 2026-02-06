import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/views/Widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar( {super.key, required this.icon, required this.title,this.onPress,});
  final IconData icon;
  final String title;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
  
   
    return Column(
      children: [
        SizedBox(height: 60,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
         
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title, style: TextStyle(fontSize: 28)),
            Spacer(),
            CustomSearchIcon(onPress, icon: icon)
          ],
        ),
       SizedBox(height:6,),
      ],
    );
  }
}