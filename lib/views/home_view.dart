import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_list_View.dart';
import 'package:notes_app/widgets/search_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddBottomSheet(),
          );
        },
        child: const Icon(
          Icons.add,
          size: 27,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: SearchIcon(),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 5),
        child: Column(children: [
          Expanded(child: NoteListView()),
        ]),
      ),
    );
  }
}

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          InputText(
            hint: 'Title',
          ),
          SizedBox(
            height: 50,
          ),
          InputText(
            hint: 'Content',
          ),
        ],
      ),
    );
  }
}

class InputText extends StatelessWidget {
  final String hint;
  const InputText({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.deepPurple, fontSize: 18),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
