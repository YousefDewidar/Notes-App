import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';
import 'package:notes_app/widgets/custom_input_text.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Note',
          style: TextStyle(fontSize: 24),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CustomIcon(
              icon: Icons.done,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            InputText(
              hint: 'Title',
              onSaved: (value) {},
            ),
            const SizedBox(
              height: 20,
            ),
            InputText(
              hint: 'Content',
              maxLines: 5,
              onSaved: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
