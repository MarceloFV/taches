import 'package:get/get.dart';

import 'package:notepad/app/pages/home/home_binding.dart';
import 'package:notepad/app/pages/home/home_view.dart';
import 'package:notepad/app/pages/folder/folder_bindings.dart';
import 'package:notepad/app/pages/folder/folder_view.dart';
import 'package:notepad/app/pages/note/note_binding.dart';
import 'package:notepad/app/pages/note/note_view.dart';
import 'package:notepad/app/pages/reader/reader_binding.dart';
import 'package:notepad/app/pages/reader/reader_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FOLDER,
      page: () => FolderView(),
      binding: FolderBinding(),
    ),
    GetPage(
      name: _Paths.NOTE,
      page: () => NoteView(),
      binding: NoteBinding(),
    ),
    GetPage(
      name: _Paths.READER,
      page: () => ReaderView(),
      binding: ReaderBinding(),
    ),
  ];
}
