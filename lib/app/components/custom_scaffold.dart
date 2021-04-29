import 'package:flutter/material.dart';
import 'package:notepad/app/components/custom_app_bar.dart';
import 'package:notepad/app/components/custom_drawer.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget appBar;
  final Widget? drawer;


  const CustomScaffold({
    Key? key,
    required this.body,
    required this.appBar,
    this.drawer,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: body,
    );
  }
}
