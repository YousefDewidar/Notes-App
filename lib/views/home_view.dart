import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/widgets/add_bottom_sheet.dart';
import 'package:notes_app/widgets/note_list_View.dart';
import 'package:notes_app/widgets/search_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) =>
                  const SingleChildScrollView(child: AddBottomSheet()),
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
        body: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 5),
          child: Column(children: [
            Expanded(child: NoteListView()),
          ]),
        ),
      ),
    );
  }
}
