import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:pharma_go_v1_app/core/constant/colours.dart';
import 'package:pharma_go_v1_app/core/constant/fonts.dart';
import 'package:pharma_go_v1_app/core/constant/measurements.dart';
import 'package:pharma_go_v1_app/features/aibmf/business_layer/controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  // TextEditingController email = TextEditingController();
  // TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              //controller.login();
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: Column(
            children: [
              const Spacer(flex: 3),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(
                    controller: controller.email,
                    labelText: 'Email',
                    leading: const Icon(
                      Icons.email,
                      color: kIconColorMajour,
                    ),
                    suffix: const Icon(
                      Icons.check_circle,
                      color: kIconColorMajour,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(
                    controller: controller.password,
                    labelText: 'Passward',
                    leading: const Icon(
                      Icons.password,
                      color: kIconColorMajour,
                    ),
                    suffix: const Icon(
                      Icons.security,
                      color: kIconColorMajour,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth(context) * .8,
                height: screenHeight(context) * .08,
                child: controller.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          Logger().i("Login button cliecked");
                          controller.login();
                        },
                        child: cusFont('Login'),
                      ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    required this.labelText,
    required this.leading,
    required this.suffix,
    this.helperText,
    super.key,
  });

  final String labelText;
  final String? helperText;
  final Icon leading;
  final Icon suffix;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        icon: leading,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: kPrimaryFourground,
        ),
        helperText: helperText ?? '',
        suffixIcon: suffix,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kPrimaryFourground),
        ),
      ),
    );
  }
}
