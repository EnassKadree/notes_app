

import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget 
{
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding:  const EdgeInsets.symmetric(horizontal: 8),
      child: CircleAvatar
      (
        radius: 16.5,
        backgroundColor: isActive? Colors.white : Colors.grey[700],
        child: CircleAvatar
        (
          radius: 15,
          backgroundColor: color,
          
        ),
      ),
    );
  }
}
