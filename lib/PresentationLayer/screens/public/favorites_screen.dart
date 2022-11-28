import 'package:brainshop/PresentationLayer/screens/public/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../widgets/appbar.dart';
import '../../widgets/button_navigation.dart';
import '../../widgets/favorite_item.dart';
import '../../widgets/page_title.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: customAppBar(context),
      bottomNavigationBar: const NavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.all(8.0),
              child:Column(
                children:
                    [
                       pageTitle("Favorites"),
                       const FavoriteItem(),
                      const SizedBox(height: 15,),
                      const FavoriteItem(),
                      const SizedBox(height: 15,),
                      const FavoriteItem(),
                      const SizedBox(height: 15,),
                      const FavoriteItem(),
                      const SizedBox(height: 15,),
                      const FavoriteItem(),
                ])
              ),
            ],
          ),
        ),
      ),
    );
  }
}
