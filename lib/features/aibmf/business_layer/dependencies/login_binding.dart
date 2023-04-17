import 'package:get/get.dart';
import 'package:pharma_go_v1_app/features/aibmf/business_layer/controllers/login_controller.dart';

class LogingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(
      LoginController(),
    );
  }
}
