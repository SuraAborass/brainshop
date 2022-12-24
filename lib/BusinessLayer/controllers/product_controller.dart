import 'package:get/get.dart';
import '../../DataAccessLayer/Models/category.dart';
import '../../DataAccessLayer/Models/product.dart';
import '../../DataAccessLayer/Repositories/products_repo.dart';
import 'categories_controller.dart';

class ProductController extends GetxController {
  final CategoriesController categoriesController = Get.find();
  ProductsRepo repo = ProductsRepo();
  late Product product;
  //ProductController(this.category);
  List<Product> products = [];
  late final Category category;

  var loading = false.obs;

  @override
  void onInit() async {
    await getProducts();
    super.onInit();
  }

  Future<void> getProducts() async {
    loading.value = true;
    products = await repo.products(category.id);
    update();
    loading.value = false;
  }
}
