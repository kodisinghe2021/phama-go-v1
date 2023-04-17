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
      name: Paths.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Paths.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Paths.REGISTRATION,
      page: () => const RegirtrationPage(),
      binding: RegistrationhBinding(),
    ),
    GetPage(
      name: Paths.LOGIN,
      page: () =>  LoginPage(),
      binding: LogingBinding(),
    ),
  ];
}
