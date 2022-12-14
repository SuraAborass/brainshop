import 'package:brainshop/BusinessLayer/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../BusinessLayer/controllers/language_controller.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  final LanguageController _languageController = Get.find();
  final ThemeController _themeController = Get.find();
  final themeData = Get.isDarkMode ? ThemeData.dark() : ThemeData.light();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.grey,
            ),
            child:  Text("Sura Aborass",style: title5,),
          ),
          ListTile(
            leading: const Icon(Icons.home,color: AppColors.white,),
            title: Text('Home'.tr, style: title),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person, color: AppColors.white,),
            title: Text("Profile".tr,style: title,),
          ),
          ListTile(
            leading: Icon(
                Theme.of(context).brightness == Brightness.dark
                    ? Icons.light_mode_rounded
                    : Icons.dark_mode_rounded,
                color: AppColors.white),
            title: Text(
                themeData == ThemeData.dark()
                    ? 'Light Theme'.tr
                    : 'Dark Theme'.tr,
                style: title),
            onTap: () {
              if (Get.isDarkMode) {
                Get.changeThemeMode(ThemeMode.light);
              } else {
                Get.changeThemeMode(ThemeMode.dark);
              }
              _themeController.switchTheme();
            },
          ),
          ListTile(
            leading: const Icon(Icons.language,color: AppColors.white),
            title: Text('Language'.tr,style: title),
            onTap: () {
              Get.defaultDialog(
                  title: 'Choose Language'.tr,
                  titleStyle: title.copyWith(color: AppColors.black),
                  content: Column(
                    children: [
                      ListTile(
                        title: Text("Arabic".tr),
                        onTap: () {
                          _languageController.saveLocale("ar");
                          Get.back();
                        },
                      ),
                      ListTile(
                        title: Text("English".tr),
                        onTap: () {
                          _languageController.saveLocale("en");
                          Get.back();
                        },
                      )
                    ],
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.roundabout_left, color: AppColors.white,),
            title: Text("About Us".tr,style: title,),
          ),
        ],
      ),
    );
  }
}
