import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_images.dart';
import 'package:insta_app/core/utils/app_styles.dart';

Widget oneDouble() {
  return SizedBox(
    width: 375.w,
    height: 60.h,
    child: ListTile(
      leading: SizedBox(
        height: 64.w,
        width: 64.w,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
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
            Positioned(
              bottom: 10.h,
              right: 15.w,
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
          ],
        ),
      ),
      subtitle: Text('kiero_d, zackjohn and 26 others\nliked your photo. 3h',
          style: AppStyles.smallStyle),
      trailing: Container(
        width: 44.w,
        height: 44.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.sliderTemp3),
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
  );
}
