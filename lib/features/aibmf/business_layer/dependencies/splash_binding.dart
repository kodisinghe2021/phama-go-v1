import 'package:get/get.dart';
import 'package:pharma_go_v1_app/features/aibmf/business_layer/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(
      SplashController(),
    );
  }
}
