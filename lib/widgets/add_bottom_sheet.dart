import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_input_text.dart';

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
            height: 40,
          ),
          InputText(
            hint: 'Content',
            maxLines: 5,
          ),
          Spacer(),
          CustomButton(),
          SizedBox(
            height:25,
          ),
        ],
      ),
    );
  }
}

