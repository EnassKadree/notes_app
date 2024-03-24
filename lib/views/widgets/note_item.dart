
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ntoes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:ntoes_app/models/note.dart';
import 'package:ntoes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget 
{
  const NoteItem({required this.note});
  final Note note;

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell
      (
        onTap: ()
        {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EditNotView()));
        },
        child: Container
        (
          decoration: BoxDecoration
          (
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16)
          ),
          child: Padding
          (
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.end,
              children: 
              [
                ListTile
                (
                  title: Text
                  (
                    note.title,
                    style: const TextStyle
                    (
                      color: Colors.black,
                      fontSize: 24
                    ),
                  ),
                  subtitle: Padding
                  (
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text
                    (
                      note.content, 
                      style: TextStyle
                      (
                        color: Colors.black.withOpacity(.4),
                        fontSize: 18
                      )
                    ),
                  ),
                  trailing: IconButton
                  (
                    icon: const Icon(FontAwesomeIcons.trash, color: Colors.black), 
                    onPressed: (){note.delete();  BlocProvider.of<NotesCubit>(context).fetchNotes();},
                  )
                ),
                Padding
                (
                  padding: const EdgeInsets.only(right: 16),
                  child: Text
                  (
                    note.date, 
                    style: TextStyle
                    (
                      color: Colors.black.withOpacity(.4),
                      fontSize: 16
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}