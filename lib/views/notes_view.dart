import 'package:flutter/material.dart';
import 'package:ntoes_app/views/widgets/add_note_modal.dart';
import 'package:ntoes_app/views/widgets/ntoes_view_body.dart';

class NotesView extends StatelessWidget 
{
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      floatingActionButton: 
      FloatingActionButton
      (
        onPressed: ()
        {
          showModalBottomSheet(context: context, builder: (context) {return const AddNoteModalBottomSheet();});
        }, 
        child: const Icon(Icons.add, color: Colors.black,),
      ),
      body: const NotesViewBody(),
    );
  }
}
