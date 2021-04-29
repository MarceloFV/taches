import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
    CustomAppBar() : preferredSize = Size.fromHeight(kToolbarHeight);

    @override
    final Size preferredSize; // default is 56.0

    @override
    _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{

    @override
    Widget build(BuildContext context) {
        return AppBar(
        iconTheme: IconThemeData().copyWith(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Organizador de tarefas',
          style: GoogleFonts.satisfy(),
        ),
        actions: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 20.0),
          //   child: IconButton(
          //     icon: Icon(Icons.share),
          //     onPressed: () {
          //       //TODO: Implement onSharePressed
          //     },
          //   ),
          // ),
        ],
      );
    }
}
