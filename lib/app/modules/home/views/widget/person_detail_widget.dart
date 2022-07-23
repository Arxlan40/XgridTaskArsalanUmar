import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../data/utils/app_colors.dart';
import '../../../../data/utils/app_strings.dart';

class PersonDetailWidget extends StatelessWidget {
  const PersonDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 12.h,
          width: 12.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.darkBrown,
              border:
              Border.all(color: AppColors.kPrimary, width: 1.2.w)),
          child: const Icon(
            Icons.person,
            size: 25,
            color: AppColors.kPrimary,
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          AppStrings.jonDoe,
          style:
          TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 0.2.h,
        ),
        Text(
          AppStrings.email,
          style:
          TextStyle(fontSize: 12.sp, fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }
}
