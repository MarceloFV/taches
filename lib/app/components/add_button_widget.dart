import 'package:flutter/material.dart';
import 'package:notepad/constants.dart';

class AddButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButtonWidget({Key? key, required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 64,
      icon: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Icon(
            Icons.add,
            color: kShadowColor,
          ),
          Align(
            alignment: Alignment(-0.05,-0.05),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),

        ],
      ),
      onPressed: onPressed,
    );
  }
}
