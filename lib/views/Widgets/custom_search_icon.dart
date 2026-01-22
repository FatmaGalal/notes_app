import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
  
    return Center(
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
        
        color: Colors.white10, ),
        
        child: Center(child: Icon(icon, size: 28,)),
      ),
    );
  }
}