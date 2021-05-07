import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notepad/app/components/add_button_widget.dart';
import 'package:notepad/app/components/custom_app_bar_widget.dart';
import 'package:notepad/app/components/custom_scaffold_widget.dart';
import 'package:notepad/app/components/document_button_widget.dart';
import 'package:notepad/app/pages/folder/folder_controller.dart';

class FolderView extends GetView<FolderController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: Text(
          controller.folder,
          style: GoogleFonts.satisfy(),
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(16.0),
        child: Obx(
          () => GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            children: [
              ...controller.notes.map(
                (e) => DocumentIconButton(
                  title: e.title,
                  onPressed: () {
                    controller.onNoteTapped(e);
                  },
                ),
              ),
              AddButtonWidget(
                onPressed: controller.onAddNotePressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
