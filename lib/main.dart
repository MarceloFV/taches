import 'package:flutter/material.dart';
import 'package:notepad/app/pages/home/home_view.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NotePadPro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: kPinkColor,
        primarySwatch: Colors.pink,
        primaryColor: Colors.grey,
        scaffoldBackgroundColor: kPinkColor,
        inputDecorationTheme: InputDecorationTheme().copyWith(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder().copyWith(
            borderSide: BorderSide().copyWith(
              color: Colors.white,
            ),
          ),
          
        ),
      ),
      home: HomeView(),
    );
  }
}
