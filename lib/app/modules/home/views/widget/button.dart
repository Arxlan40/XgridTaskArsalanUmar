import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../data/utils/app_colors.dart';


///----Custon Button for the profile screen----////

class RoundButtonContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final String? title;
  final bool? tile;
  final bool? logout;
  final IconData? icon;
  final Color? containerColor;
  final Color? textColor;

  RoundButtonContainer(
      {this.width,
      this.height,
      this.title,
      this.icon,
      this.logout = false,
      this.tile,
      this.containerColor = AppColors.kPrimary,
      this.textColor = AppColors.black});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          color: containerColor,
        ),
        child: tile!
            ? ListTile(
                leading: Icon(icon!,color: AppColors.black,),
                title: Text(
                  title!,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,color: AppColors.black
                ),
              )
            : Center(
                child: Text(
                title!,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: textColor),
              )),
      ),
    );
  }
}
