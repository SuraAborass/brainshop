import 'package:get/get.dart';

import '../controllers/categories_controller.dart';
import '../controllers/language_controller.dart';
import '../controllers/product_controller.dart';
import '../controllers/theme_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LanguageController>(LanguageController());
    Get.put<ThemeController>(ThemeController());
    Get.put<CategoriesController>(CategoriesController());
    Get.put<ProductController>(ProductController());
  }
}