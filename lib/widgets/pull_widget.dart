import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/widgets/note_card.dart';

class PullWidget extends StatelessWidget {
  const PullWidget({
    super.key,
    required this.notes,
    required this.index,
  });

  final List notes;
  final int index;

  @override
  Widget build(BuildContext context) {
    // to remove card when drag left
    return Dismissible(

      key: UniqueKey(),
      background: Container(
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(16)),
        child: const Icon(Icons.delete),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        notes[index].delete();
        BlocProvider.of<NotesCubit>(context).fetchNotes();
      },
      child: NoteCard(
        note: notes[index],
      ),
    );
  }
}
