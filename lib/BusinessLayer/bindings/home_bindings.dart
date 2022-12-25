import 'package:get/get.dart';
import '../controllers/categories_controller.dart';
import '../controllers/notification_controller.dart';
import '../controllers/product_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BackNotificationController>(BackNotificationController());
    Get.put<CategoriesController>(CategoriesController());

  }
}
