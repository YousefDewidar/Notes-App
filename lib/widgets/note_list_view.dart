// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/cubits/notes_state.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/pull_widget.dart';

// ignore: must_be_immutable
class NoteListView extends StatefulWidget {
  const NoteListView({super.key});
  @override
  State<NoteListView> createState() => _NoteListViewState();
}

class _NoteListViewState extends State<NoteListView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        var notes = BlocProvider.of<NotesCubit>(context).notes;
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            // card with motion
            child: PullWidget(
              notes: notes,
              index: index,
            ),
          ),
        );
      },
    );
  }
}
