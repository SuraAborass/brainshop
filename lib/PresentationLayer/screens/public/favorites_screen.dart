import 'package:brainshop/PresentationLayer/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/colors.dart';
import '../../widgets/appbar.dart';
import '../../widgets/favorite_item.dart';
import '../../widgets/page_title.dart';
import 'button_navigation.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: AppColors.black,
        appBar: myAppBar(context),
        drawer: MyDrawer(),
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
                         pageTitle("Favorites".tr),
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
      ),
    );
  }
}
