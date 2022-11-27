import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../widgets/button_navigation.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  (tag: "product",
                    child: Image.asset('assets/images/Image 6.png',width: deviceSize.width,))
            ), ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children:  [
                  const Expanded(
                    flex: 2,
                    child: Text("Flounce Sleeve V Neck Puff Sleeve Blouse",style: title),),
                  Expanded(
                    flex: 1,
                      child: Column(
                    children: const [
                      Text("50.000",style: title7,),
                      Text("    40.000 S.P",style: titleCopy8,),
                    ],
                  ))
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.star, color: AppColors.yellow,),
                Icon(Icons.star, color: AppColors.yellow,),
                Icon(Icons.star, color: AppColors.yellow,),
                Icon(Icons.star, color: AppColors.yellow,),
                Icon(Icons.star, color: AppColors.yellow,),
              ],
            )),
            Padding(padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: AppColors.white,

                      ),
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: AppColors.blue,

                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: AppColors.pink,

                      ),
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: AppColors.black1,

                    ),
                  ],
                )),
          ]))
        ],
      ),

    );
  }
}
