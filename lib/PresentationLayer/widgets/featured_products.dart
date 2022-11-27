import 'package:brainshop/DataAccessLayer/Models/appbanner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../screens/public/one_collection_screen.dart';


class FeaturedProducts extends StatefulWidget {
  const FeaturedProducts({Key? key}) : super(key: key);

  @override
  State<FeaturedProducts> createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  late PageController pageController;

  @override
  void initState(){
    super.initState();
    pageController = PageController(viewportFraction: 0.7);
  }

  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final deviceSize=MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: 250,
          width: deviceSize.width,
          decoration: const BoxDecoration(color: AppColors.black),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            controller: pageController,
            itemCount: appBannerList.length,
            itemBuilder: (context, index) {
              return carouselView(index);
            },
          ),
        ),
      ],
    );
  }

  Widget carouselView(int index){
    return carouselCard(appBannerList[index]);

  }
  Widget carouselCard(AppBanner data){
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: ()=> Get.to(const OneCollection()),
              child: Container(
                height: 160,
                width: 200,
                decoration:  BoxDecoration(
                  image: DecorationImage(image: AssetImage(data.url),fit: BoxFit.cover),
                  borderRadius:  const BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(data.title,style: title5,),
        )
      ],


    );

  }
}
