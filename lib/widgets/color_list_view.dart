import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';


class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                curIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color =
                    kColors[curIndex];
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: index == curIndex,
              ));
        },
      ),
    );
  }
}


class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isActive,
    required this.color,
  });
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: CircleAvatar(
          backgroundColor: color,
          child: isActive == true
              ? const Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.black,
                  ),
                )
              : null),
    );
  }
}
