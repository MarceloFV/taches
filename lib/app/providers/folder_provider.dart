import 'package:hive/hive.dart';
import 'package:notepad/app/models/folder_model.dart';

class FolderProvider {
  
  save(FolderModel folder) async {
    var dir = await Hive.openBox('.');
    dir.add(folder);
  }

  Future<List<FolderModel>> getFolders() async {
    var dir = await Hive.openBox('.');
    if (dir.values.length <= 0)
      return [];
    else {
      var list = dir.values;
      return list.map((e) => e as FolderModel).toList();
    }
  }
}
