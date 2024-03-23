import 'package:flutter/material.dart';
import 'package:ntoes_app/constants.dart';

class CustomTextField extends StatelessWidget 
{
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return TextField
    (
      
      decoration: InputDecoration
      (
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintStyle: const TextStyle(color: kPrimaryColor),
        hintText: 'Title'
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder
      (
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ??  Colors.white)
      );
  }
}