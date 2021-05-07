import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:notepad/app/models/note_model.dart';
import 'package:notepad/app/providers/note_provider.dart';
import 'package:notepad/app/routes/app_pages.dart';

class FolderController extends GetxController {
  late String folder = '';
  RxList<NoteModel> notes = <NoteModel>[].obs;

  final NoteProvider provider;

  FolderController({required this.provider});

  @override
  void onInit() {
    super.onInit();

    folder = Get.arguments['folderTitle'];
  }

  @override
  void onReady() async {
    super.onReady();
    notes.assignAll(await provider.getAll(folder));
  }

  onNoteTapped(NoteModel note) {
    Get.toNamed(Routes.READER, arguments: {'note': note});
  }

  onAddNotePressed() async {
    await Get.toNamed(Routes.NOTE, arguments: {
      'folder': folder,
    });
    notes.assignAll(await provider.getAll(folder));
  }
}
