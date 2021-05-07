import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notepad/app/models/note_model.dart';

import 'package:notepad/app/providers/note_provider.dart';

class NoteController extends GetxController {
  final NoteProvider provider;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  RxString _title = 'Nova tarefa'.obs;

  NoteController({
    required this.provider,
  });

  late String folder;

  @override
  onInit() {
    super.onInit();
    folder = Get.arguments['folder'];
  }

  get title => _title.value;

  onTitleChanged(String newTitle) {
    _title.value = newTitle;
  }

  onNoteCheckPressed() async {
    NoteModel note =
        NoteModel(title: titleController.text, content: contentController.text);
    await provider.save(folder, note);
    Get.back();
  }
}
