import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:pharma_go_v1_app/core/errors/snack_bar.dart';
import 'package:pharma_go_v1_app/routes/app_pages.dart';

class HomeController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //* properties
  GetStorage getStorage = GetStorage();
  var email = '';

  //^image picking variables
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  // final ImagePicker picker = ImagePicker();
  // File imageFile = File("");

  //* functions
  Future<void> getImage(ImageSource imageSource) async {
    final PickedFile =
        await ImagePicker().pickImage(source: imageSource);
    if (PickedFile != null) {
      selectedImagePath.value = PickedFile.path;
      selectedImageSize.value =
          "${((File(selectedImagePath.value)).lengthSync() / 1024 / 1024).toStringAsFixed(2)}Mb";
    } else {
      customSnackBar("Empty Selection", 'Not image selected');
    }
  }
  // Future<void> pickImage() async {
  //   XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
  //   if (pickedFile != null) {
  //     imageFile = File(pickedFile.path);
  //     Logger().i("file picked ${imageFile.path}");
  //   } else {
  //     customDialogBar("Empty", "not file selected");
  //   }
  // }

  Future<void> logout() async {
    await _auth.signOut();
    getStorage.erase();
    Get.offAllNamed(Routes.LOGIN);
  }
}
