import 'package:brainshop/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/font_styles.dart';
import '../../../DataAccessLayer/Models/product.dart';
import '../../widgets/appbar.dart';
import '../../widgets/collections.dart';
import '../../widgets/drawer.dart';
import '../../widgets/featured_products.dart';
import '../../widgets/search_field.dart';
import 'button_navigation.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: AppColors.black,
        appBar: customAppBar(context),
        drawer: MyDrawer(),
        bottomNavigationBar: const NavBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
               const SearchField(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10),
                child: Row(
                  children: [
                    Text("Collections".tr, style: title3,),],),),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Collections(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15),
                child: Row(
                  children: [
                    Text("Featured Products".tr, style: title3,),],),),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  FeaturedProducts(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
