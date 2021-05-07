import 'package:get/get.dart';
import 'package:notepad/app/pages/reader/reader_controller.dart';

class ReaderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReaderController>(
      () => ReaderController(),
    );
  }
}
