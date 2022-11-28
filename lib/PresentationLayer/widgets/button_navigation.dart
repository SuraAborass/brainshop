import 'package:brainshop/Constants/colors.dart';
import 'package:brainshop/Constants/routes.dart';
import 'package:brainshop/PresentationLayer/screens/public/my_bag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main.dart';
import '../screens/public/favorites_screen.dart';
import '../screens/public/notification_screen.dart';
import '../screens/public/profile_screen.dart';

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
            Get.to(const Notifications());
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
