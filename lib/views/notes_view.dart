import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntoes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:ntoes_app/views/widgets/add_note_modal.dart';
import 'package:ntoes_app/views/widgets/ntoes_view_body.dart';

class NotesView extends StatelessWidget 
{
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return BlocProvider
    (
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton
        (
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteModalBottomSheet();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
