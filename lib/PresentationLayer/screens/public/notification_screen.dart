import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/page_title.dart';
import 'button_navigation.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: pageTitle("Notifications".tr),
              ),
              Padding(padding: const EdgeInsets.only(top: 10, bottom: 10,),
              child: Column(
                children: [
                  Container(
                    width: deviceSize.width,
                    height: 79,
                    decoration: const BoxDecoration(color: AppColors.lightgrey,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex:1,
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 66,
                            height: 64,
                            decoration: const BoxDecoration(color: AppColors.lightblack,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            child: const Center(child:Text("#50",style: title5,)),
                          ),
                        ),
                        const Expanded(
                            flex: 3,
                            child: ListTile(
                              title: Text("Order Statue",style: title6,),
                              subtitle: Text("Order id : 50 is Under Review",style: title7,),
                            )),

                      ],
                    )
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    width: deviceSize.width,
                    height: 79,
                    decoration: const BoxDecoration(color: AppColors.lightgrey,
                    ),
                      child: Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              width: 66,
                              height: 64,
                              decoration: const BoxDecoration(color: AppColors.lightblack,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: const Center(child: Icon(Icons.warning,color: AppColors.yellow,)),
                            ),
                          ),
                          const Expanded(
                              flex: 3,
                              child: ListTile(
                                title: Text("Order Statue",style: title6,),
                                subtitle: Text("Order id : 50 is Under Review", style: title7),
                              )),

                        ],
                      )
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    width: deviceSize.width,
                    height: 79,
                    decoration: const BoxDecoration(color: AppColors.lightgrey,
                    ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              width: 66,
                              height: 64,
                              decoration: const BoxDecoration(color: AppColors.lightblack,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                image: DecorationImage(image: AssetImage('assets/images/Image 6.png'),fit: BoxFit.cover),),

                            ),
                          ),
                          const Expanded(
                              flex: 3,
                              child: ListTile(
                                title: Text("50% Discount For Jackets",style: title6,),
                                subtitle: Text("Check New Offer For You", style: title7),
                              )),

                        ],
                      )
                  ),
                ],
              ),)

            ],

          ),
        ),
      ),
    );
  }
}
