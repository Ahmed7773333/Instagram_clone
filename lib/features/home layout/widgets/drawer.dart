import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_images.dart';

Widget drawer(context) {
  return Drawer(
    child: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.5.w),
            child: Text(
              's.khasanov_',
              style: TextStyle(
                color: const Color(0xFF262626),
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.25,
              ),
            ),
          ),
          oneRow(image: AppImages.archive, title: 'Archive'),
          oneRow(image: AppImages.activety, title: 'Your Activity'),
          oneRow(image: AppImages.nametag, title: 'Name Tag'),
          oneRow(image: AppImages.save, title: 'Saved'),
          oneRow(image: AppImages.closeFriends, title: 'Close Friends'),
          oneRow(image: AppImages.addFriend, title: 'Discover People'),
          oneRow(image: AppImages.facebookIcon, title: 'Open Facebook'),
          const Spacer(),
          oneRow(image: AppImages.settings, title: 'Settings'),
        ],
      ),
    ),
  );
}

Widget oneRow({required String image, required String title}) {
  return SizedBox(
    width: 251.w,
    height: 48.h,
    child: Stack(
      children: [
        Positioned(
          top: 12.3.h,
          left: 15.8.w,
          child: Image.asset(image),
        ),
        Positioned(
          top: 14.h,
          left: 52.w,
          child: Text(
            title,
            style: TextStyle(
              color: const Color(0xFF262626),
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.25,
            ),
          ),
        ),
      ],
    ),
  );
}
