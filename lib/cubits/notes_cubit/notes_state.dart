part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

 final class NotesSuccess extends NotesState {}

// final class NotesSuccess extends NotesState {
//   final List<NoteModel> notes;

//   NotesSuccess({required this.notes});
// }

