import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_styles.dart';

Widget oneTab({String? text, String? image}) {
  return Container(
    margin: EdgeInsets.all(6.r),
    height: 32.h,
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Color(0x2D3C3C43)),
        borderRadius: BorderRadius.circular(6.r),
      ),
    ),
    child: Center(
      child: image != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(image, color: Colors.black),
                Text(text!, style: AppStyles.smallStyle),
              ],
            )
          : Text(text!, style: AppStyles.smallStyle),
    ),
  );
}
