import 'package:flutter/material.dart';
import 'package:ntoes_app/constants.dart';

class CustomTextField extends StatelessWidget 
{
  const CustomTextField({required this.hint, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hint; 
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) 
  {
    return TextFormField
    (
      validator: (value)
      {
        //if it's null so I will return 'field is required' so I have to take a true if it's null
        if(value?.isEmpty ?? true)
        {
          return 'field is required';
        }
        return null;
      },
      onSaved: onSaved,
      onChanged: onChanged,
      maxLines: maxLines,
      decoration: InputDecoration
      (
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintStyle: const TextStyle(color: kPrimaryColor),
        hintText: hint
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder
      (
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ??  Colors.grey[700])
      );
  }
}