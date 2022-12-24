import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../BusinessLayer/controllers/categories_controller.dart';
import '../../BusinessLayer/controllers/product_controller.dart';
import '../../Constants/colors.dart';
import 'collection_item.dart';

class Collections extends StatelessWidget {
  Collections({Key? key,}) : super(key: key);
  final CategoriesController _controller = Get.find();
  //final ProductController productController = Get.find();



  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 140,
          width: deviceSize.width,
          decoration: const BoxDecoration(color: AppColors.black),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            itemCount: _controller.categories.length,
            itemBuilder: (context, index) {
              return CollectionItem(category: _controller.categories[index],);
            },
          ),
        ),
      ],
    );
  }
}
