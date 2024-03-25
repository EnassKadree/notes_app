import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:ntoes_app/constants.dart';
import 'package:ntoes_app/models/note.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> 
{
  NotesCubit() : super(NotesInitial());

  List<Note> notes = [];

  fetchNotes() 
  {
    var notesBox = Hive.box<Note>(kNoteBox);
    notes = notesBox.values.toList();
    notes = notes.reversed.toList();
    emit(NotesSuccess());
  }
}
