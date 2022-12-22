import 'package:get/get.dart';
import '../../DataAccessLayer/Models/product.dart';
import '../../DataAccessLayer/Repositories/products_repo.dart';
import 'categories_controller.dart';

class ProductController extends GetxController {
  final CategoriesController categoriesController = Get.find();
  ProductsRepo repo = ProductsRepo();
  List<Product> products = [];

  var loading = false.obs;

  @override
  void onInit() async {
    await getProducts();
    super.onInit();
  }

  Future<void> getProducts() async {
    loading.value = true;
    products = await repo.products(categoriesController.category!.id);
    update();
    loading.value = false;
  }
}
