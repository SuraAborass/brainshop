import 'package:get/get.dart';
import 'package:brainshop/Constants/routes.dart';

import '../BusinessLayer/bindings/init_bindings.dart';
import '../PresentationLayer/screens/auth/login_screen.dart';
import '../PresentationLayer/screens/public/home_screen.dart';
import '../PresentationLayer/screens/public/one_collection_screen.dart';
import '../PresentationLayer/screens/public/splash_screen.dart';

List<GetPage<dynamic>> router = [
  GetPage(
    name: AppRoutes.splashScreen,
    page: () =>  SplashScreen(),
  ),

  GetPage(
      name: AppRoutes.loginPage,
      page: () => const LoginScreen(),
      binding: InitBinding()
  ),

  GetPage(
      name: AppRoutes.homepage,
      page: () =>  const MyHomePage(),
      binding: InitBinding()
  ),
  GetPage(
      name: AppRoutes.collection,
      page: () {  OneCollection oneCollection = Get.arguments;
        return oneCollection;},
      binding: InitBinding()
  ),

];