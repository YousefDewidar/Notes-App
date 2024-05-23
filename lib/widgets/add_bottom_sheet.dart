import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_state.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddNoteCubit(),
        child: Container(
          height: 415,
          padding: const EdgeInsets.all(24),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
              if (state is AddNoteFailuer) {
                print('failed ${state.errorMsg}');
              }
            },
            builder: (context, state) {
              return const CustomForm();
            },
          ),
        ));
  }
}
