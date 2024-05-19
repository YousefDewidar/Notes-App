class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailuer extends AddNoteState {
  final String errorMsg;

  AddNoteFailuer(this.errorMsg);
}
