import 'package:get/get.dart';
import 'package:notepad/app/models/folder_model.dart';
import 'package:notepad/app/providers/folder_provider.dart';
import 'package:notepad/app/routes/app_pages.dart';

class HomeController extends GetxController {
  RxList<String> folders = <String>[].obs;

  FolderProvider folderProvider = FolderProvider();

  onAddFolderPressed(String title) {
    FolderModel folder = FolderModel(title: title);
    folderProvider.save(folder);
    updateFolderList();
  }

  updateFolderList() async {
    var list = await folderProvider.getFolders();
    folders.assignAll(list.map((model) => model.title));
  }

  @override
  void onReady() async {
    super.onReady();
    updateFolderList();
  }

  onFolderTapped(String folderTitle) {
    Get.toNamed(
      Routes.FOLDER,
      arguments: {
        'folderTitle': folderTitle,
      },
    );
  }
}
