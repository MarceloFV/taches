import 'package:hive/hive.dart';
import 'package:notepad/app/models/note_model.dart';

class NoteProvider {
  late int idx;

  Future save(String folder, NoteModel note) async {
    if (folder != '.') {
      var box = await Hive.openBox(folder);
      box.put(note.title, note);
    }
  }

  Future<NoteModel> getNote(String folder, NoteModel note) async {
    var box = await Hive.openBox(folder);
    return box.getAt(idx);
  }

  Future<List<NoteModel>> getAll(String folder) async {
    var box = await Hive.openBox(folder);
    var list = box.values.map((e) => e as NoteModel).toList();
    print(list);
    return list;
  }
}
