import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:pharma_go_v1_app/core/errors/snack_bar.dart';
import 'package:pharma_go_v1_app/routes/app_pages.dart';

class LoginController extends GetxController {
  //* properties
  final getStorage = GetStorage();

  //~ get inputs from ui
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  //~ waiting
  bool isLoading = false;

  //~ firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //* functions
  Future<void> login() async {
    if (validationData()) {
      isLoading = true;
      try {
        UserCredential userData = await _auth.signInWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );
        await setUser(userData);
        Get.offAllNamed(Routes.HOME);
        isLoading = false;
      } on FirebaseAuthException catch (e) {
          isLoading = false;
        customDialogBar("Error", e.code);
      }
    }
  }

  //* Validation
  bool validationData() {
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      return true;
    } else {
      customDialogBar('Empty', 'Feilds are empty');
      return false;
    }
  }

  //* set user details
  Future<void> setUser(UserCredential userCredential) async {
    Logger().i("Inside setUser | get write email");
    await getStorage.write('email', userCredential.user!.email);
    Logger().i("Inside setUser | get write uid");
    await getStorage.write('uid', userCredential.user!.uid);
    Logger().i("Inside setUser | get write both executed");
  }
}
