import 'package:get/get.dart';
import 'package:pharma_go_v1_app/features/aibmf/business_layer/controllers/registration_controller.dart';

class RegistrationhBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RegistrationController>(
      RegistrationController(),
    );
  }
}
