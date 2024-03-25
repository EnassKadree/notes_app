import 'package:flutter/material.dart';
import 'package:ntoes_app/models/note.dart';
import 'package:ntoes_app/views/widgets/edit_note_view_body.dart';

class EditNotView extends StatelessWidget 
{
  const EditNotView({super.key, required this.note});
  final Note note; 

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: EditNoteViewBody(note: note,),
    );
  }
}