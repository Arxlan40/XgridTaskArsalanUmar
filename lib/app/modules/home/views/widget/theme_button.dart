import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../data/utils/app_colors.dart';
import '../../controllers/home_controller.dart';


///----Button for changing the application theme----////

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    Key? key,
    required this.controller,

  }) : super(key: key);

  final HomeController controller;


  @override
  Widget build(BuildContext context) {
    return Obx(() => Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () {
          controller.isLightTheme.value =
          !controller.isLightTheme.value;
          Get.changeThemeMode(
            controller.isLightTheme.value
                ? ThemeMode.light
                : ThemeMode.dark,
          );
          controller.update();
          controller.saveThemeStatus();
        },
        child: Padding(
          padding: EdgeInsets.only(right: 5.w),
          child: Icon(
            Icons.nightlight_round,
            size: 30,
            color: controller.isLightTheme.value
                ? AppColors.black
                : AppColors.whiteColor,
          ),
        ),
      )),
    );
  }
}
