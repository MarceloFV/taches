import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notepad/app/components/custom_app_bar.dart';
import 'package:notepad/app/components/custom_scaffold.dart';
import 'package:notepad/app/pages/folder/folder_controller.dart';
import 'package:notepad/constants.dart';

class FolderView extends StatefulWidget {
  @override
  _FolderViewState createState() => _FolderViewState();
}

class _FolderViewState extends State<FolderView> {
  final controller = FolderController();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        minimum: EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          children: [
            DocumentIconButton(
              title: 'Nova tarefa',
              onPressed: () {},
            ),
            IconButton(
              iconSize: 64,
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                controller.onAddNotePressed(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

class DocumentIconButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const DocumentIconButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 64,
      icon: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.insert_drive_file_rounded,
              color: kGreyColor,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: GoogleFonts.satisfy(
                color: Colors.pink,
              ),
            ),
          )
        ],
      ),
      onPressed: onPressed,
    );
  }
}
