import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/bottom_sheet.dart';
import 'package:notes_app/widgets/note_list_View.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // button add to add note
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
        actions: [
          // icon delete
          CustomIcon(
            icon: Icons.delete,
            onPressed: () async {
              await Hive.box<NoteModel>(kNotesBox).clear();
              // ignore: use_build_context_synchronously
              BlocProvider.of<NotesCubit>(context).fetchNotes();
            },
          ),
          // icon search
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16),
            child: CustomIcon(
              icon: Icons.search,
              onPressed: () {},
            ),
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
