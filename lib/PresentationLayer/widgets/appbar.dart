import 'package:flutter/material.dart';

import '../../Constants/colors.dart';

PreferredSizeWidget customAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.black,
    elevation: 0,
    leading: Builder(builder: (context) {
      return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.dehaze_outlined,
            size: 30,
            color: AppColors.yellow,
          ));
    }),
    title: Image.asset(
      'assets/images/logo.png',
      height: 32,
      width: 74,
      alignment: Alignment.topLeft,
    ),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            size: 30,
            color: AppColors.grey3,
          ))
    ],
  );
}