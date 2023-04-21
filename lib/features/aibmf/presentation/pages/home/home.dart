
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:pharma_go_v1_app/core/constant/fonts.dart';
import 'package:pharma_go_v1_app/core/constant/measurements.dart';
import 'package:pharma_go_v1_app/features/aibmf/business_layer/controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Logger().i("HomePage build method executed");
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              controller.logout();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: screenWidth(context),
          height: screenHeight(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => controller.selectedImagePath.value == ''
                    ? cusFont("Select image")
                    : Image.file(
                        File(controller.selectedImagePath.value),
                        fit: BoxFit.cover,
                        width: screenWidth(context) * .9,
                        height: screenWidth(context) * .9 * 1.5,
                      ),
              ),
              Obx(() => Text(controller.selectedImageSize.value ?? '0')),
              const SizedBox(height: 30),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    controller.getImage(ImageSource.camera);
                  },
                  child: const Text('Capture image'),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    controller.getImage(ImageSource.gallery);
                  },
                  child: const Text('Select from gallery'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
