import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../widgets/appbar.dart';
import '../../widgets/button_navigation.dart';
import '../../widgets/page_title.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize=MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              pageTitle("My Profile"),
               const SizedBox(height: 15,),
               Center(
                child: ListTile(
                  title: const CircleAvatar(
                    backgroundColor: AppColors.yellow,
                    radius: 90,
                    child: CircleAvatar(
                      radius: 85,
                      backgroundImage: AssetImage("assets/images/pexels-motional-studio-1081685.png"),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sura Aborass",style: titleCopy3.copyWith(fontWeight: FontWeight.normal),textAlign: TextAlign.center,),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.lightblack,
                  border: const OutlineInputBorder(),
                  hintText: 'Sura Aborass',
                  hintStyle: title1,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2,
                        color: AppColors.grey2),
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
                  border: const OutlineInputBorder(),
                  hintText: 'Sura@gmail.com',
                  hintStyle: title1,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2,
                        color: AppColors.grey2),
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
                  border: const OutlineInputBorder(),
                  hintText: 'Leave it empty to avoid changes',
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
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.lightblack ,
                  hintText: 'Enter Your Address',
                  hintStyle: title1,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(width: 2, color: AppColors.grey2),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: AppColors.grey2)),
                ),

                maxLines: 1,
              ),
              const SizedBox(height: 30,),
              MaterialButton(height: 56,
                minWidth: deviceSize.width,
                color: AppColors.yellow ,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0))),
                child: const Text('Update Profile Info', style: titleCopy ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
