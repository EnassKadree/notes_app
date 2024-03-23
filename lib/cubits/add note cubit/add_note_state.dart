part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}
final class AddNoteLoading extends AddNoteState {}
final class AddNotesSuccess extends AddNoteState {}
final class AddNoteFailures extends AddNoteState 
{
  final String errMessage;

  AddNoteFailures(this.errMessage);
}
