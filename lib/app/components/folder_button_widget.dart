
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notepad/constants.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Icon(
                Icons.folder,
                color: kShadowColor,
              ),
              Align(
                alignment: Alignment(-0.1, -0.05),
                child: Icon(
                  Icons.folder,
                  color: kGreyColor,
                ),
              ),
            ],
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
