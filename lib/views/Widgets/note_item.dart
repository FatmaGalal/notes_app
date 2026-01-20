import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 26, bottom: 26, left: 24, right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffFFcc80),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              
              minVerticalPadding: 24,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'Flutter Tips',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    
                  ),
                ),
              ),
              contentPadding: EdgeInsets.all(0),
              subtitle: Text(
                'Use listview builder to show the user notes',
                style: TextStyle(fontSize: 18),
              ),
              iconColor: Colors.black87,
              textColor: Colors.black45,
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.trash),
                iconSize: 26,
                color: Colors.black87,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16 , top: 16),
              child: Text(
                '12/01/2026',
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
