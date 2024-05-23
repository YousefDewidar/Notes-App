import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes_state.dart';
import 'package:notes_app/model/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  addNote(NoteModel note)  {
    try {
      emit(NotesSuccess(
        noteList: Hive.box(kNotesBox).values.toList() as List<NoteModel>
      ));
    
    } catch (e) {
        
      emit(NotesFailuer(e.toString()));
    }
  }
}
