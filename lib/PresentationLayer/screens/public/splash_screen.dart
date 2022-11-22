import 'dart:async';
import 'package:brainshop/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/login_screen.dart';



class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final timer = Timer(
      const Duration(seconds: 3),
          ()=> Get.to(const LoginScreen())
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.black,
        bottomNavigationBar: Container(
          height : 20,
          color: AppColors.yellow,
        ),
        body: Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: 88,
            width: 205,
          ),

        ));
  }
}
