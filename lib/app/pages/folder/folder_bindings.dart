import 'package:get/get.dart';
import 'package:notepad/app/pages/folder/folder_controller.dart';
import 'package:notepad/app/providers/note_provider.dart';

class FolderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FolderController>(
      FolderController(provider: NoteProvider()),
    );
  }
}
