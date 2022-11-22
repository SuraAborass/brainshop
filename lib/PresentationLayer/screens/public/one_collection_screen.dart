import 'package:brainshop/Constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../Constants/font_styles.dart';

class OneCollection extends StatelessWidget {
  const OneCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize=MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.black,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/images/Image 6.png')
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
          ],),),
        ],
      ),
    );
  }
}
