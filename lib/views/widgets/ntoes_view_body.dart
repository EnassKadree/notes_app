
import 'package:flutter/material.dart';
import 'package:ntoes_app/views/widgets/custom_appbar.dart';

class NotesViewBody extends StatelessWidget 
{
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column
      (
        children: 
        [
          CustomAppBar()
        ],
      ),
    );
  }
}