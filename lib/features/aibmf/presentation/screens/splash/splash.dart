import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'LOADING....',
        ),
      ),
    );
  }
}
