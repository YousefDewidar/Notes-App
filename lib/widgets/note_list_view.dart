// ignore: file_names
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_card.dart';

// ignore: must_be_immutable
class NoteListView extends StatelessWidget {
  NoteListView({super.key});

  List<Color> color = [Colors.blue,Colors.brown,Colors.green,Colors.orangeAccent];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount:color.length,
      itemBuilder: (context, index) => Padding(
        padding:const EdgeInsets.only(bottom: 16.0),
        child: NoteCard(color: color[index],),
      ),
    );
  }
}
