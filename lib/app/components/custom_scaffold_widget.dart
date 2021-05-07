import 'package:flutter/material.dart';

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
