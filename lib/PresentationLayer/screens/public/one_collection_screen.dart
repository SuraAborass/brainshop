import 'package:brainshop/Constants/colors.dart';
import 'package:brainshop/PresentationLayer/screens/public/product_screen.dart';
import 'package:flutter/material.dart';

import '../../../Constants/font_styles.dart';
import '../../widgets/button_navigation.dart';
import 'package:get/get.dart';

class OneCollection extends StatelessWidget {
  const OneCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.black,
      bottomNavigationBar: const NavBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.black,
           actions: [
             IconButton(
                 onPressed: () {},
                 icon: const Icon(
                   Icons.shopping_cart,
                   size: 30,
                   color: AppColors.white,
                 ))
           ],
            flexibleSpace: FlexibleSpaceBar(
              background: Hero
                (tag: "collection",
                  child: Image.asset('assets/images/Image 6.png',fit: BoxFit.cover,))
            ), ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text("Women",style: title3),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:10,left:10,top: 10),
              child: Column(
                children:[
                  Container(
                    decoration: const BoxDecoration(color: AppColors.lightblack,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 100,
                    width: deviceSize.width,
                    child: Row(
                      children:  [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: ()=> Get.to(const Product()),
                            child: Container(
                              margin: const EdgeInsets.all(8.0),
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
                           title: const Text("Flounce Sleeve V Neck Puff Sleeve Blouse",style: title5,textAlign: TextAlign.right),
                           subtitle: Row(
                             children: const [
                               Text("50.000",style: title7,textAlign: TextAlign.right),
                               Text("    40.000",style: title8,textAlign: TextAlign.right),
                             ],
                           ),
                         ),
                      ),
                         Expanded(
                            flex:1,
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

                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    decoration: const BoxDecoration(color: AppColors.lightblack,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 100,
                    width: deviceSize.width,
                    child: Row(
                      children:  [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: ()=> Get.to(const Product()),
                            child: Container(
                              margin: const EdgeInsets.all(8.0),
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
                            title: const Text("Flounce Sleeve V Neck Puff Sleeve Blouse",style: title5,textAlign: TextAlign.right),
                            subtitle: Row(
                              children: const [
                                Text("50.000",style: title7,textAlign: TextAlign.right),
                                Text("    40.000",style: title8,textAlign: TextAlign.right),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex:1,
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

                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    decoration: const BoxDecoration(color: AppColors.lightblack,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 100,
                    width: deviceSize.width,
                    child: Row(
                      children:  [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: ()=> Get.to(const Product()),
                            child: Container(
                              margin: const EdgeInsets.all(8.0),
                              decoration: const  BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/Image 6.png'),fit: BoxFit.cover),
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              height: 90,
                              width: 90 ,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Expanded(
                          flex: 3,
                          child: ListTile(
                            title: const Text("Flounce Sleeve V Neck Puff Sleeve Blouse",style: title5,textAlign: TextAlign.right),
                            subtitle: Row(
                              children: const [
                                Text("50.000",style: title7,textAlign: TextAlign.right),
                                Text("    40.000",style: title8,textAlign: TextAlign.right),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex:1,
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

                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox( height: 15,),
                  Container(
                    decoration: const BoxDecoration(color: AppColors.lightblack,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 100,
                    width: deviceSize.width,
                    child: Row(
                      children:  [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: ()=> Get.to(const Product()),
                            child: Container(
                              margin: const EdgeInsets.all(8.0),
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
                            title: const Text("Flounce Sleeve V Neck Puff Sleeve Blouse",style: title5,textAlign: TextAlign.right),
                            subtitle: Row(
                              children: const [
                                Text("50.000",style: title7,textAlign: TextAlign.right),
                                Text("    40.000",style: title8,textAlign: TextAlign.right),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex:1,
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

                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),

                ]
              ),
            )
          ],),),
        ],
      ),
    );
  }
}
