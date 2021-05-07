
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notepad/constants.dart';

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
