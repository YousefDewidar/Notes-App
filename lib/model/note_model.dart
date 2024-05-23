import 'package:hive_flutter/adapters.dart';


//command --> flutter packages pub run build_runner build
//Generate Type Adapter
part 'note_model.g.dart';

@HiveType(typeId: 0)

class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  String date;
  @HiveField(3)
  int color;

  NoteModel(
      {required this.color,
      required this.date,
      required this.subTitle,
      required this.title});
}
