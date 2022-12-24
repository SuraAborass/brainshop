import 'package:brainshop/Constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../BusinessLayer/controllers/product_controller.dart';
import '../../../Constants/font_styles.dart';
import '../../../DataAccessLayer/Models/category.dart';
import '../../widgets/product_by_category_item.dart';
import 'package:get/get.dart';
import 'button_navigation.dart';

class OneCollection extends StatelessWidget {
 OneCollection({Key? key,required this.category,}) : super(key: key);
   final ProductController productController = Get.put(ProductController());
   final Category category;
   //final ProductController productController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      bottomNavigationBar: const NavBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(expandedHeight: 400,
            pinned: true,
            backgroundColor: AppColors.black,
           actions: [
             IconButton(
                 onPressed: () {},
                 icon: const Icon(
                   Icons.shopping_cart,
                   size: 30,
                   color: AppColors.white,
                 ))
           ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Hero(
                    tag: "category",
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(category.image),
                              fit: BoxFit.cover),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                  ),
                ],
              ),
            ), ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:[
                  Text(category.name,style: title3),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:10,left:10,top: 10),
              child: SizedBox(
                height: Get.height - 400,
                child: ListView.builder(
                  itemCount: productController.products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductByCategoryItem(
                        product: productController.products[index]);
                  },
                ),
              ),
            )
          ],),),
        ],
      ),
    );
  }
}
