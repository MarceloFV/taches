import 'package:flutter/material.dart';
import 'package:notepad/app/pages/add_note/add_note_view.dart';
import 'package:notepad/app/pages/folder/folder_view.dart';

class HomeController {
  

  onFolderPressed(context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FolderView()),
    );
  }
}
