import 'package:get/get.dart';
import 'package:pharma_go_v1_app/features/aibmf/business_layer/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(),
    );
  }
}
