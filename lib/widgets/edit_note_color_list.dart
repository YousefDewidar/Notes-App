import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/color_list_view.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int curIndex;

  @override
  void initState() {
    curIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
              widget.note.color = kColors[curIndex].value;
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isActive: index == curIndex,
            ),
          );
        },
      ),
    );
  }
}
