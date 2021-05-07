import 'package:get/get.dart';
import 'package:notepad/app/pages/note/note_controller.dart';
import 'package:notepad/app/providers/note_provider.dart';

class NoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoteController>(
      () => NoteController(
        provider: NoteProvider(),
      ),
    );
  }
}
