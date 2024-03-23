import 'package:flutter/material.dart';
import 'package:ntoes_app/views/widgets/edit_note_view_body.dart';

class EditNotView extends StatelessWidget 
{
  const EditNotView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return const Scaffold
    (
      body: EditNoteViewBody(),
    );
  }
}