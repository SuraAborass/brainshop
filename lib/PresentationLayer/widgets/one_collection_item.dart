import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../screens/public/product_screen.dart';

class OneCollectionItem extends StatelessWidget {
  const OneCollectionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
        decoration: const BoxDecoration(color: AppColors.lightblack,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        height: 100,
        width: deviceSize.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Expanded(
              flex: 2,
              child: InkWell(
                onTap: ()=> Get.to(const Product()),
                child: Container(
                  // margin: const EdgeInsets.all(8.0),
                  decoration: const  BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/Image 6.png'),fit: BoxFit.cover),
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  height: 90,
                  width: 90 ,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ListTile(
                title: const Text("Flounce Sleeve V Neck Puff Sleeve Blouse",style: title5,textAlign: TextAlign.start),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("50.000",style: title7),
                    Text("    40.000",style: title8),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: AppColors.white,
                        ),
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: AppColors.blue,
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: AppColors.pink,
                        ),
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: AppColors.black1,
                      ),],),))],),
    );
  }
}
