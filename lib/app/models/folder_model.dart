import 'package:hive/hive.dart';

part 'folder_model.g.dart';


@HiveType(typeId: 1)
class FolderModel {
  @HiveField(0)
  String title;

  FolderModel({
    required this.title,
  });
}
