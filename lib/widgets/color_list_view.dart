import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';

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

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int curIndex = 0;

  List<Color> colors = const [
    Color.fromARGB(255, 127, 135, 223), // Deep purple
    Color.fromARGB(255, 151, 82, 82), // Red (opaque)
    Color.fromARGB(128, 199, 119, 203), // Semi-transparent blue
    Color.fromARGB(255, 88, 167, 88), // Green (opaque)
    Color.fromARGB(255, 171, 188, 86), // Yellow (opaque) - Duplicate of red, likely a typo
    Color.fromARGB(255, 70, 163, 163), // Teal (opaque)
    Color.fromARGB(255, 200, 138, 77), // Orange (opaque)
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                curIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[curIndex];
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: index == curIndex,
              ));
        },
      ),
    );
  }
}
