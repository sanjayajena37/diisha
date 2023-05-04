import 'package:get/get.dart';

import '../modules/AbhaCongratulationPage/bindings/abha_congratulation_page_binding.dart';
import '../modules/AbhaCongratulationPage/views/abha_congratulation_page_view.dart';
import '../modules/DiishaDashboard/bindings/diisha_dashboard_binding.dart';
import '../modules/DiishaDashboard/views/diisha_dashboard_view.dart';
import '../modules/LoginPage/bindings/login_page_binding.dart';
import '../modules/LoginPage/views/login_page_view.dart';
import '../modules/NCDScreeningPage/bindings/n_c_d_screening_page_binding.dart';
import '../modules/NCDScreeningPage/views/n_c_d_screening_page_view.dart';
import '../modules/RegisterwithAadharPage/bindings/registerwith_aadhar_page_binding.dart';
import '../modules/RegisterwithAadharPage/views/registerwith_aadhar_page_view.dart';
import '../modules/SplashScreen/bindings/splash_screen_binding.dart';
import '../modules/SplashScreen/views/splash_screen_view.dart';
import '../modules/ViewAbhaCardPage/bindings/view_abha_card_page_binding.dart';
import '../modules/ViewAbhaCardPage/views/view_abha_card_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_ABHA_CARD_PAGE,
      page: () => ViewAbhaCardPageView(),
      binding: ViewAbhaCardPageBinding(),
    ),
    GetPage(
      name: _Paths.N_C_D_SCREENING_PAGE,
      page: () => const NCDScreeningPageView(),
      binding: NCDScreeningPageBinding(),
    ),
    GetPage(
      name: _Paths.DIISHA_DASHBOARD,
      page: () => DiishaDashboardView(),
      binding: DiishaDashboardBinding(),
    ),
    GetPage(
      name: _Paths.ABHA_CONGRATULATION_PAGE,
      page: () => const AbhaCongratulationPageView(),
      binding: AbhaCongratulationPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTERWITH_AADHAR_PAGE,
      page: () => const RegisterwithAadharPageView(),
      binding: RegisterwithAadharPageBinding(),
    ),
  ];
}
