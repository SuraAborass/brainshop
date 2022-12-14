import 'dart:convert';
import '../Clients/category_client.dart';
import '../Models/category.dart';


class CategoriesRepo {
  CategoriesClient client = CategoriesClient();
  Future<List<Category>> myCategories() async {
    var response = await client.getCategories();
    if (response != "") {
      final parsed = json.decode(response).cast<Map<String, dynamic>>();
      return parsed
          .map<Category>((json) => Category.fromMap(json))
          .toList();
    }
    return [];
  }
}
