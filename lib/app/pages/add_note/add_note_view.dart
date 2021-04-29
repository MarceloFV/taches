import 'package:flutter/material.dart';
import 'package:notepad/app/components/custom_app_bar.dart';
import 'package:notepad/app/components/custom_scaffold.dart';
import 'package:notepad/app/pages/add_note/add_note_controller.dart';

class AddNoteView extends StatefulWidget {
  @override
  _AddNoteViewState createState() => _AddNoteViewState();
}

class _AddNoteViewState extends State<AddNoteView> {
  final titleController = TextEditingController();
  final textController = TextEditingController();
  late final AddNoteController controller;
  @override
  void initState() {
    super.initState();
    controller = AddNoteController(
      titleController: titleController,
      textController: textController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        minimum: EdgeInsets.all(32),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Titulo',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Texto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
