import 'package:flutter/material.dart';
import 'package:notepad/app/pages/add_note/add_note_view.dart';

class FolderController {
  onAddNotePressed(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddNoteView()),
    );
  }
}