
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(color: Colors.white, fontSize: 19),
      )),
    );
  }
}