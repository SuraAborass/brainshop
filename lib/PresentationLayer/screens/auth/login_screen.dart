import 'package:brainshop/Constants/colors.dart';
import 'package:brainshop/Constants/routes.dart';
import 'package:brainshop/PresentationLayer/screens/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/font_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordvisible = true;

  @override
  Widget build(BuildContext context) {

    final deviceSize=MediaQuery.of(context).size;

    return  Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 100),
                  alignment: Alignment.center,
                  child:  Text(
                    "Welcome Back !".tr, style: title),
                  ),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Text(
                    "Please Sign In To Your Account".tr,
                    style: title),
                  ),
              const SizedBox(height: 60),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.lightblack,
                  border: const OutlineInputBorder(),
                  hintText: 'Enter Your Email'.tr,
                  hintStyle: title1,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2,
                        color: AppColors.lightgrey),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: AppColors.grey2)),
                ),
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.lightblack,
                  suffixIcon: IconButton(
                    icon: Icon(passwordvisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    color: AppColors.grey2,
                    onPressed: () {
                      setState(() {
                        passwordvisible = !passwordvisible;
                      });
                    },
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter Your Password'.tr,
                  hintStyle: title1,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: AppColors.grey2),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: AppColors.grey2)),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: passwordvisible,

                maxLines: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                textDirection: TextDirection.rtl,
                children: [
                  InkWell(
                    onTap: () {},
                    child:  Text(
                      'Forget Password ?'.tr,
                      style: title1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
              height: 60,
              ),
              MaterialButton(height: 56,
                minWidth: deviceSize.width,
                color: AppColors.yellow ,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0))),
                child:  Text('Login'.tr, style: title ),
                onPressed: () {
                Get.toNamed(AppRoutes.homepage);
                },
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(height: 56,
                minWidth: deviceSize.width,
                color: AppColors.white ,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0))),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Image 1.png',height: 20, width: 20,),
                    Text('  Continue With Google'.tr, style: title1 ),

                  ],
                ),
                onPressed: () {},
              ),
              const SizedBox( height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don`t Have an Account?'.tr,
                    style: title1),
                  InkWell(
                    onTap: () {
                      Get.to(const Register());
                    },
                    child: Text(
                      ' Create One'.tr,
                      style: title2),
                    ),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}
