import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notepad/app/pages/home/home_view.dart';

import 'app/models/folder_model.dart';
import 'app/models/note_model.dart';
import 'app/routes/app_pages.dart';
import 'constants.dart';

import 'package:path_provider/path_provider.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var dir = await path.getApplicationDocumentsDirectory();
  Hive.init(dir.path);
    Hive.registerAdapter(FolderModelAdapter());//TODO: descomentar
    Hive.registerAdapter(NoteModelAdapter());//TODO: descomentar

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onGenerateTitle: (ctx) => 'Taches',
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
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      enableLog: false,
    );
  }
}
