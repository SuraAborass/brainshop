import 'package:brainshop/Constants/colors.dart';
import 'package:brainshop/Constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(

      currentIndex: MyApp.currentPage,
      onTap: (index) {
        MyApp.currentPage = index;
        switch (index) {
          case 0:
            Get.toNamed(AppRoutes.homepage);
            break;
          case 1:
            Get.toNamed(AppRoutes.notifications);
            break;
          case 2:
            Get.toNamed(AppRoutes.mybag);
            break;
          case 3:
            Get.toNamed(AppRoutes.favourites);
            break;
          case 4:
            Get.toNamed(AppRoutes.profile);
            break;
          default:
        }},

      backgroundColor: AppColors.black,
      selectedItemColor: AppColors.yellow,
      unselectedItemColor: Colors.white.withOpacity(.5),
      items:  const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          backgroundColor: AppColors.lightblack,
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColors.lightblack,
          icon: Icon(Icons.notifications),
          label: "Notifications",
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColors.lightblack,
          icon:  Icon(Icons.shopping_cart),
          label: "My Bag",
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColors.lightblack,
          icon: Icon(Icons.favorite),
          label: "Favourites",
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColors.lightblack,
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}
