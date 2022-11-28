import 'package:brainshop/Constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../Constants/font_styles.dart';
import '../../widgets/appbar.dart';
import '../../widgets/mybag_item.dart';
import '../../widgets/page_title.dart';

class MyBag extends StatelessWidget {
  const MyBag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize=MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: customAppBar(context),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 180,
          color: AppColors.black,
          child: Column(
            children:  [
               const SizedBox(height: 15,),
              Expanded(
                flex: 2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                children:[
                      Text("Total :",style: titleCopy7.copyWith(fontSize: 15),),
                      Text("   1.000.000 S.P",style: title8.copyWith(fontSize: 15))
                ],
              ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          Text("Discount :    ",style: titleCopy7.copyWith(fontSize: 15),),
                          Text("200.000 S.P",style: title7.copyWith(fontSize: 15, color: Colors.red))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          Text("Net Value :    ",style: titleCopy7.copyWith(fontSize: 15),),
                          Text("800.000 S.P",style: title8.copyWith(fontSize: 15,))
                        ],
                      ),
                    ],
                  )),
              Expanded(
                flex: 1,
                child: MaterialButton(
                  onPressed:(){},
                  height: 56,
                  minWidth: deviceSize.width,
                  color: AppColors.yellow ,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20.0))),
                  child: const Text('Check Out', style: titleCopy ),

                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              pageTitle("My Bag"),
              const MyBagItem(),
              const SizedBox(height: 15,),
              const MyBagItem(),
              const SizedBox(height: 15,),
              const MyBagItem(),
              const SizedBox(height: 15,),
              const MyBagItem(),
            ],
          ),
        ),
      ),
    );
  }
}