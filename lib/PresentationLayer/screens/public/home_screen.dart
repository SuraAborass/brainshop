import 'package:brainshop/Constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../Constants/font_styles.dart';
import '../../widgets/appbar.dart';
import '../../widgets/button_navigation.dart';
import '../../widgets/collections.dart';
import '../../widgets/featured_products.dart';
import '../../widgets/search_field.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: customAppBar(context),
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
                children: const [
                  Text("Collections", style: title3,),],),),
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Collections(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 15),
              child: Row(
                children: const [
                  Text("Featured Products", style: title3,),],),),
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  FeaturedProducts(),
            ),
          ],
        ),
      ),
    );
  }
}
