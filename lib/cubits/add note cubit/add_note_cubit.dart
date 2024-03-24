import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ntoes_app/constants.dart';
import 'package:ntoes_app/models/note.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> 
{
  AddNoteCubit() : super(AddNoteInitial());

  addNote(Note note) async
  {
    emit(AddNoteLoading());
    try
    {
      var notesBox = Hive.box<Note>(kNoteBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());
    }
    catch(e)
    {emit(AddNoteFailure(e.toString()));}
  }
}
