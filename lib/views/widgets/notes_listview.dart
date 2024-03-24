import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntoes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:ntoes_app/models/note.dart';
import 'package:ntoes_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>
    (
      builder: (context, state) 
      {
        List<Note> notes = BlocProvider.of<NotesCubit>(context).notes;
        return ListView.builder
        (
          itemCount: notes.length,
          itemBuilder: (context, index) 
          {
            return NoteItem(note: notes[index],);
          });
      },
    );
  }
}
