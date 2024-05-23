import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon,required this.onPressed});

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
          highlightColor:
              icon != Icons.search ? Colors.red : const Color(0x5CBEBEBE),
          onPressed: onPressed,
          icon: Icon(
            icon,
          )),
    );
  }
}
