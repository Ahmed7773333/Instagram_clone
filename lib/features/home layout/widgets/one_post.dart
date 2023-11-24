import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_images.dart';

Widget onePost() {
  return Column(
    children: [
      Container(
        width: 375.w,
        height: 54.h,
        color: Colors.white,
        child: Stack(children: [
          Positioned(
            top: 11.h,
            left: 10.w,
            child: Container(
              height: 32.h,
              width: 32.w,
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
          ),
          Positioned(
            top: 11.h,
            left: 52.w,
            child: const Text(
              'joshua_l',
              style: TextStyle(
                color: Color(0xFF262626),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: 30.h,
            left: 52.w,
            child: const Text(
              'Tokyo, Japan',
              style: TextStyle(
                color: Color(0xFF262626),
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            top: 16.h,
            left: 108.w,
            child: Image.asset(
              AppImages.officialIcon,
            ),
          ),
          Positioned(
            top: 20.h,
            right: 15.w,
            child: const Icon(Icons.more_horiz, color: Color(0xff262626)),
          ),
        ]),
      ),
      Container(
        width: 375.w,
        height: 375.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.sliderinit,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        width: 375.w,
        height: 147.h,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 10.h,
              left: 14.w,
              child: Icon(
                Icons.favorite_outline_sharp,
                size: 29.r,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 11.h,
              left: 55.w,
              child: Image.asset(
                AppImages.comment,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 13.5.h,
              left: 94.5.w,
              child: Image.asset(
                AppImages.messanger,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 12.68.h,
              right: 15.14.w,
              child: Image.asset(
                AppImages.save,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 50.h,
              left: 15.5.w,
              child: Image.asset(AppImages.oval),
            ),
            Positioned(
              top: 48.h,
              left: 39.w,
              child: Text(
                'Liked by craig_love and 44,686 others',
                style: TextStyle(
                  color: const Color(0xFF262626),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              top: 72.h,
              left: 15.w,
              child: Text(
                'joshua_l The game in Japan was amazing and I want to\nshare some photos',
                style: TextStyle(
                  color: const Color(0xFF262626),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
