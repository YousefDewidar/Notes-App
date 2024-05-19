import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_input_text.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(24), child: CustomForm());
  }
}

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  // steps to create form with validate

  // formKey to choose any form you want
  final GlobalKey<FormState> formKey = GlobalKey();

  // auto validate on change
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          InputText(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 40,
          ),
          InputText(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const Spacer(),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
