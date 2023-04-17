import 'package:get/get.dart';

SnackbarController customSnackBar(String title, String message) =>
    Get.snackbar(title, message);
Future<dynamic> customDialogBar(String title, String text) => Get.defaultDialog(
      title: title,
      middleText: text,
    );
