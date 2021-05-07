import 'package:get/get.dart';
import 'package:notepad/app/models/note_model.dart';

class ReaderController extends GetxController {
  late NoteModel note;

  @override
  void onInit() {
    super.onInit();
    note = Get.arguments['note'];
  }

  
}
