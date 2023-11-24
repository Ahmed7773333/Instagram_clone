import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_images.dart';
import 'package:insta_app/core/utils/app_styles.dart';

Widget oneNotifcation() {
  return SizedBox(
    width: 375.w,
    height: 60.h,
    child: Center(
      child: ListTile(
        leading: Container(
          height: 44.h,
          width: 44.w,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            image: DecorationImage(
              image: AssetImage(
                AppImages.temp,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        subtitle: Text('martini_rond started\nfollowing you. 3d',
            style: AppStyles.smallStyle),
        trailing: Container(
          width: 90.w,
          height: 28.h,
          decoration: ShapeDecoration(
            color: const Color(0xFF3797EF),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.r)),
          ),
          child: Center(
            child: Text(
              'Follow',
              style: AppStyles.buttonText,
            ),
          ),
        ),
      ),
    ),
  );
}
