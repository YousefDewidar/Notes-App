import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';

class NoteCard extends StatelessWidget {
  final NoteModel note;
  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 24, top: 24, bottom: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(note.subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.4), fontSize: 16)),
              ),
          ),
            // date
            Text(
              note.date,
              style:
                  TextStyle(color: Colors.black.withOpacity(.4), fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
