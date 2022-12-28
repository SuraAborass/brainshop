import 'package:brainshop/BusinessLayer/controllers/user_controller.dart';
import 'package:get/get.dart';
import '../../Constants/routes.dart';

class SplashController extends GetxController {
  UserController userController = Get.find();

  @override
  void onReady() {
    if (userController.authed == true) {
      Future.delayed(const Duration(seconds: 3))
          .then((value) => Get.toNamed(AppRoutes.homepage));
      ;
    } else {
      Future.delayed(const Duration(seconds: 3))
          .then((value) => Get.toNamed(AppRoutes.loginPage));
    }
    super.onReady();
  }
}
