import 'package:brainshop/Constants/colors.dart';
import 'package:brainshop/Constants/routes.dart';
import 'package:brainshop/PresentationLayer/screens/public/my_bag.dart';
import 'package:brainshop/PresentationLayer/screens/public/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../main.dart';
import 'favorites_screen.dart';
import 'notification_screen.dart';



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
            Get.to(const MyBag());
            break;
          case 3:
            Get.to(const Favorites());
            break;
          case 4:
            Get.to(const Profile());
            break;
          default:
        }},

      backgroundColor: AppColors.black,
      selectedItemColor: AppColors.yellow,
      unselectedItemColor: Colors.white.withOpacity(.5),
      items:  <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          backgroundColor: AppColors.lightblack,
          icon: const Icon(Icons.home),
          label: "Home".tr,
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColors.lightblack,
          icon: const Icon(Icons.notifications),
          label: "Notifications".tr,
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColors.lightblack,
          icon: const Icon(Icons.shopping_cart),
          label: "My Bag".tr,
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColors.lightblack,
          icon: const Icon(Icons.favorite),
          label: "Favourites".tr,
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColors.lightblack,
          icon: const Icon(Icons.person),
          label: "Profile".tr,
        ),
      ],
    );
  }
}
