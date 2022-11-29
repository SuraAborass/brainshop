import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../BusinessLayer/controllers/language_controller.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);
  //final LanguageController _languageController = Get.find();

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
            leading: const Icon(Icons.language,color: AppColors.white),
            title: Text('Language'.tr,style: title),
            onTap: () {
              Get.defaultDialog(
                  title: 'Choose Language'.tr,
                  titleStyle: title,
                  content: Column(
                    children: [
                      ListTile(
                        title: Text("Arabic".tr),
                        onTap: () {
                          //_languageController.saveLocale("ar");
                          Get.updateLocale(const Locale('en', 'US'));
                          Get.back();
                        },
                      ),
                      ListTile(
                        title: Text("English".tr),
                        onTap: () {
                          //_languageController.saveLocale("en");
                          Get.updateLocale(const Locale('en', 'US'));
                          Get.back();
                        },
                      )
                    ],
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_support_outlined, color: AppColors.white,),
            title: Text("Contact Us".tr,style: title,),
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
