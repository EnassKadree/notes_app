
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntoes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:ntoes_app/views/widgets/custom_appbar.dart';
import 'package:ntoes_app/views/widgets/notes_listview.dart';

class NotesViewBody extends StatefulWidget 
{
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() 
  {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column
      (
        children: 
        [
          CustomAppBar(title: 'Notes', icon: Icons.search_rounded, onPressed: (){},), 
          const Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
