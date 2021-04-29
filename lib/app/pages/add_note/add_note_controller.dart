import 'package:flutter/material.dart';

class AddNoteController {
  final TextEditingController titleController;
  final TextEditingController textController;

  AddNoteController({
    required this.titleController,
    required this.textController,
  });

  onConfirmPressed() {
    print('confirmado');
    print(titleController.text);
    print(textController.text);
  }
}
