import 'package:brainshop/Constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../Constants/font_styles.dart';
import '../../../DataAccessLayer/Models/product.dart';
import '../../widgets/one_collection_item.dart';
import 'button_navigation.dart';

class OneCollection extends StatelessWidget {
  const OneCollection({Key? key,required this.product,}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      bottomNavigationBar: const NavBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(expandedHeight: 300,
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
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(product.category.image
                              ),
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
              padding: const EdgeInsets.all(10),
              child: Row(
                children:[
                  Text(product.category.name,style: title3),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:10,left:10,top: 10),
              child: Column(
                children:const [
                   OneCollectionItem(),
                   SizedBox(height: 15,),
                   OneCollectionItem(),
                   SizedBox(height: 15,),
                   OneCollectionItem(),
                   SizedBox( height: 15,),
                   OneCollectionItem(),
                ]
              ),
            )
          ],),),
        ],
      ),
    );
  }
}
