
import 'package:flutter/material.dart';
import 'package:ntoes_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget 
{
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return ListView.builder
    (
      itemBuilder: (context, index)
      {
        return const NoteItem();
      }
    );
  }
}