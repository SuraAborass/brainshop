import 'package:brainshop/Constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../Constants/font_styles.dart';
import '../../widgets/one_collection_item.dart';
import 'button_navigation.dart';

class OneCollection extends StatelessWidget {
  const OneCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
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
              background: Hero
                (tag: "collection",
                  child: Image.asset('assets/images/Image 6.png',fit: BoxFit.cover,)),
              /*Stack(
                children: [Hero
                  (tag: "collection",
                    child: Image.asset('assets/images/Image 6.png',fit: BoxFit.cover,)),
                  Container(
                    height: 300,
                    width: deviceSize.width,
                    decoration:  const BoxDecoration(
                      gradient:  LinearGradient(
                        colors: [AppColors.grey, AppColors.grey],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.4, 0.7],
                        tileMode: TileMode.repeated,
                      ),
                    ),
                  )
              ]
              )*/
            ), ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text("Women",style: title3),
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
