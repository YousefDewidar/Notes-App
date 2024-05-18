import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String hint;
  final int maxLines;
  const InputText({super.key, required this.hint,this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines:maxLines,
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
