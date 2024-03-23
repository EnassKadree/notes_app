
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ntoes_app/views/widgets/custom_appbar.dart';
import 'package:ntoes_app/views/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget 
{
  const NotesViewBody({super.key});

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
          CustomAppBar(), 
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

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