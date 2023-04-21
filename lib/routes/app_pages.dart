import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pharma_go_v1_app/features/aibmf/business_layer/dependencies/home_binding.dart';
import 'package:pharma_go_v1_app/features/aibmf/business_layer/dependencies/login_binding.dart';
import 'package:pharma_go_v1_app/features/aibmf/business_layer/dependencies/registration_binding.dart';
import 'package:pharma_go_v1_app/features/aibmf/business_layer/dependencies/splash_binding.dart';
import 'package:pharma_go_v1_app/features/aibmf/presentation/pages/auth/login.dart';
import 'package:pharma_go_v1_app/features/aibmf/presentation/pages/auth/registration.dart';
import 'package:pharma_go_v1_app/features/aibmf/presentation/pages/home/home.dart';
import 'package:pharma_go_v1_app/features/aibmf/presentation/screens/splash/splash.dart';

part 'page_routs.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      transition: Transition.rightToLeft,
      curve: Curves.easeIn,
      name: Paths.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      curve: Curves.easeIn,
      name: Paths.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      curve: Curves.easeIn,
      name: Paths.REGISTRATION,
      page: () => const RegirtrationPage(),
      binding: RegistrationhBinding(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      curve: Curves.easeIn,
      name: Paths.LOGIN,
      page: () => const LoginPage(),
      binding: LogingBinding(),
    ),
  ];
}
