

import 'package:flutter/material.dart';
import 'package:ntoes_app/views/widgets/custom_text_field.dart';

class AddNoteModalBottomSheet extends StatelessWidget 
{
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return const Padding
    (
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column
      (
        children: 
        [
          CustomTextField(hint: 'Title',),
          SizedBox(height: 16,),
          CustomTextField(hint: 'Content', maxLines: 5,),
        ],
      ),
    );
  }
}