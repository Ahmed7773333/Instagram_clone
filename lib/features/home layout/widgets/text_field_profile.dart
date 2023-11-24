import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textFieldProfile({String? text, required String title}) {
  final TextEditingController controller = TextEditingController(text: text);
  return SizedBox(
    width: 375.w,
    height: 48.h,
    child: Stack(
      children: [
        Positioned(
          top: 15.h,
          left: 16.w,
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
        Positioned(
          left: 96.w,
          child: SizedBox(
            width: 279.w,
            height: 48.h,
            child: TextField(
              style: TextStyle(
                color: const Color(0xFF262626),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              controller: controller,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                focusedBorder: UnderlineInputBorder(),
                disabledBorder: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(),
                hintText: 'Website',
                hintStyle: TextStyle(
                  color: Color(0x4C3C3C43),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.33,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
