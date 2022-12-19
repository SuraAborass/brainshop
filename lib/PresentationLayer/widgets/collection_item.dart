import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/font_styles.dart';
import '../../DataAccessLayer/Models/category.dart';
import '../screens/public/one_collection_screen.dart';

class CollectionItem extends StatelessWidget {
   const CollectionItem({Key? key,required this.category}) : super(key: key);
   final Category category;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => Get.to(const OneCollection()),
              child: Container(
                height: 160,
                width: 85,
                decoration:  BoxDecoration(
                  image: DecorationImage(image: NetworkImage(category.image),fit: BoxFit.cover),
                  borderRadius:  const BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(category.name,style: title8,),
        )
      ],
    );
  }
}
