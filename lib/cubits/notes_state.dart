import 'package:notes_app/model/note_model.dart';

class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> noteList;

  NotesSuccess({required this.noteList});
}

