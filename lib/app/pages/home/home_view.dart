import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notepad/app/components/custom_app_bar.dart';
import 'package:notepad/app/components/custom_drawer.dart';
import 'package:notepad/app/components/custom_scaffold.dart';
import 'package:notepad/app/pages/home/home_controller.dart';
import 'package:notepad/constants.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(),
      // drawer: CustomDrawer(),
      body: SafeArea(
        minimum: EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          children: [
            FolderIconButton(
              title: 'Nova pasta',
              onPressed: () {
                controller.onFolderPressed(context);
              },
            ),
            IconButton(
              iconSize: 64,
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                // controller.onAddNotePressed(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

class FolderIconButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const FolderIconButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 70,
      icon: Column(
        children: [
          Icon(
            Icons.folder,
            color: kGreyColor,
          ),
          Text(
            title,
            style: GoogleFonts.satisfy(
              color: Colors.pink,
            ),
          )
        ],
      ),
      onPressed: onPressed,
    );
  }
}
