import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:ntoes_app/constants.dart';
import 'package:ntoes_app/models/note.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> 
{
  NotesCubit() : super(NotesInitial());

  fetchNotes() 
  {
    try
    {
      var notesBox = Hive.box<Note>(kNoteBox);
      List<Note> notes = notesBox.values.toList();
      emit(NotesSuccess(notes: notes));
    }
    catch(e)
    {emit(NotesFailure(e.toString()));}
  }
}
