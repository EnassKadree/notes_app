import 'package:flutter/material.dart';
import 'package:ntoes_app/views/widgets/custom_appbar.dart';
import 'package:ntoes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget 
{
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return const Padding
    (
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column
      (
        children: 
        [
          CustomAppBar(title: 'Edit Note', icon: Icons.check_rounded),
          SizedBox(height: 32,),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16,),
          CustomTextField(hint: 'Content', maxLines: 5,),
        ],
      ),
    );
  }
}