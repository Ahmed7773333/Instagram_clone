import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_images.dart';

Widget gridTab() {
  return GridView.builder(
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: (124.w / 124.h),
        mainAxisSpacing: 1.h,
        crossAxisSpacing: 1.w),
    itemBuilder: (context, index) {
      return Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Container(
            height: 30.h,
            width: 30.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.sliderTemp3),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 8.h,
            right: 9.w,
            child: Image.asset(AppImages.videoIcon, color: Colors.white),
          ),
        ],
      );
    },
    itemCount: 11,
  );
}
