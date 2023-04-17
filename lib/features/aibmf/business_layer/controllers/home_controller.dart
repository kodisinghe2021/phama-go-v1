import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pharma_go_v1_app/routes/app_pages.dart';

class HomeController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //* properties
  GetStorage getStorage = GetStorage();
  var email = '';
  //* functions

  // @override
  // void onInit() {
  //   email = getStorage.read('email');
  //   super.onInit();
  // }


  Future<void> logout() async {
    await _auth.signOut();
    getStorage.erase();
    Get.offAllNamed(Routes.LOGIN);
  }
}
