import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_images.dart';

Widget igtvItem() {
  return SizedBox(
    width: 187.w,
    height: 291.h,
    child: Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppImages.thegirl,
          fit: BoxFit.fill,
        ),
        Positioned(
          right: 12.w,
          top: 10.h,
          child: Text(
            '9:14',
            style: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.05,
            ),
          ),
        ),
        Positioned(
          left: 12.w,
          bottom: 48.h,
          child: Text(
            'Interviews with leading\ndesigners of large compa…',
            style: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.01,
            ),
          ),
        ),
        Positioned(
          left: 12.w,
          bottom: 25.h,
          child: Text(
            'amanda_design',
            style: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.02,
            ),
          ),
        ),
        Positioned(
          left: 12.w,
          bottom: 10.h,
          child: Text(
            '37.2k views',
            style: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.02,
            ),
          ),
        ),
      ],
    ),
  );
}
