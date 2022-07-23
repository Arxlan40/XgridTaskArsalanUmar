import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_project/app/data/utils/app_colors.dart';
import 'package:get_project/app/data/utils/app_strings.dart';
import 'package:get_project/app/modules/home/views/widget/button.dart';
import 'package:get_project/app/modules/home/views/widget/person_detail_widget.dart';
import 'package:sizer/sizer.dart';

import '../controllers/home_controller.dart';
import 'widget/theme_button.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 2.h,
              ),

              ///---- theme changing button----////

              ThemeButton(
                controller: controller,
              ),

              ///---- Person detail widget for name,email and picture----////

              const PersonDetailWidget(),

              ///---- profile buttons----////

              RoundButtonContainer(
                tile: false,
                title: AppStrings.upgradeTopro,
                width: 30.h,
                height: 7.h,
              ),
              RoundButtonContainer(
                tile: true,
                title: AppStrings.privcay,
                width: 40.h,
                containerColor: AppColors.kSecondary,
                icon: Icons.privacy_tip_outlined,
                height: 7.h,
              ),
              RoundButtonContainer(
                tile: true,
                title: AppStrings.purchaseHistory,
                icon: Icons.history,
                containerColor: AppColors.kSecondary,
                width: 40.h,
                height: 7.h,
              ),
              RoundButtonContainer(
                tile: true,
                title: AppStrings.helpAndsupport,
                containerColor: AppColors.kSecondary,
                icon: Icons.help,
                width: 40.h,
                height: 7.h,
              ),
              RoundButtonContainer(
                tile: true,
                title: AppStrings.setting,
                containerColor: AppColors.kSecondary,
                icon: Icons.settings,
                width: 40.h,
                height: 7.h,
              ),
              RoundButtonContainer(
                tile: true,
                title: AppStrings.inviteFriend,
                icon: Icons.person_add_alt,
                containerColor: AppColors.kSecondary,
                width: 40.h,
                height: 7.h,
              ),

              ///---- logout button----////

              RoundButtonContainer(
                tile: false,
                title: AppStrings.logout,
                containerColor: AppColors.black,
                textColor: AppColors.whiteColor,
                width: 40.h,
                height: 7.h,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
