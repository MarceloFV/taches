import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notepad/app/components/add_button_widget.dart';
import 'package:notepad/app/components/custom_app_bar_widget.dart';
import 'package:notepad/app/components/custom_scaffold_widget.dart';
import 'package:notepad/app/components/folder_button_widget.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  final TextEditingController folderTitleController = TextEditingController();

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Nome da pasta'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  controller: folderTitleController,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: TextButton(
                child: Text('Cancelar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: TextButton(
                child: Text('Confirmar'),
                onPressed: () {
                  controller.onAddFolderPressed(folderTitleController.text);
                  folderTitleController.text = '';
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: Text(
          'Organizador de Tarefas',
          style: GoogleFonts.satisfy(),
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(16.0),
        child: Obx(
          () => controller.folders.length > -1
              ? GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  children: [
                    ...controller.folders.map(
                      (folder) => FolderIconButton(
                        title: folder,
                        onPressed: () {
                          controller.onFolderTapped(folder);
                        },
                      ),
                    ),
                    AddButtonWidget(
                      onPressed: () {
                        _showMyDialog(context);
                      },
                    ),
                  ],
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
