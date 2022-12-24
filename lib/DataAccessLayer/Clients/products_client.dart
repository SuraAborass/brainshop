import 'package:brainshop/Constants/links.dart';
import 'package:http/http.dart' as http;

class ProductsClient {
  Future<dynamic> getProducts(categoryId) async {
    var response =
    await http.get(Uri.parse(baseLink + "category/${categoryId.toString()}/products"));
    print("sura");
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}
