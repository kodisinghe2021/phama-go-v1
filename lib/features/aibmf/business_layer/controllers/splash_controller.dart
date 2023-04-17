import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pharma_go_v1_app/routes/app_pages.dart';

class SplashController extends GetxController {
  //* properties
  final getStorage = GetStorage();

  //* functions
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    if (getStorage.read('uid') != null) {
      Future.delayed(
        const Duration(milliseconds: 500),
        () => Get.offAllNamed(Routes.HOME),
      );
    } else {
      Future.delayed(
        const Duration(milliseconds: 500),
        () => Get.offAllNamed(Routes.LOGIN),
      );
    }
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
