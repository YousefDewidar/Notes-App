import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_state.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, this.isLoading = false});
  bool isLoading;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: BlocListener<AddNoteCubit, AddNoteState>(
              listener: (context, state) {
                if (state is AddNoteLoading) {
                  isLoading = true;
                }
              },
              child: isLoading == true
                  ?const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 140.0),
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                  : const Center(
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
            )));
  }
}
