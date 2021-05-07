import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notepad/app/components/custom_app_bar_widget.dart';
import 'package:notepad/app/components/custom_scaffold_widget.dart';
import 'package:notepad/app/pages/note/note_controller.dart';

class NoteView extends GetView<NoteController> {
  
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: Obx(
          () => Text(
            controller.title,
            style: GoogleFonts.satisfy(),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: controller.onNoteCheckPressed,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: controller.onTitleChanged,
                    controller: controller.titleController,
                    validator: (val) =>
                        val!.isNotEmpty ? null : 'Title must not be empty',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Content',
                      border: OutlineInputBorder(),
                    ),
                    controller: controller.contentController,
                    validator: (val) => val!.isNotEmpty
                        ? null
                        : 'Description must not be empty',
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
