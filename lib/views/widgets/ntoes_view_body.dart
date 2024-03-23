
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ntoes_app/views/widgets/custom_appbar.dart';
import 'package:ntoes_app/views/widgets/notes_listview.dart';

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
          CustomAppBar(title: 'Notes', icon: Icons.search_rounded,), 
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
