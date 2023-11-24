import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_images.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45.h,
        ),
        SizedBox(
          width: 375.w,
          height: 667.h,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  AppImages.theman,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8.h,
                left: 8.w,
                child: Container(
                  width: 359.w,
                  height: 2.h,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.36000001430511475),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.r)),
                  ),
                ),
              ),
              Positioned(
                top: 18.h,
                left: 12.w,
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
                top: 26.h,
                left: 56.w,
                child: Text(
                  'craig_love',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.33,
                  ),
                ),
              ),
              Positioned(
                top: 25.h,
                right: 11.w,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 24.r,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 271.w,
              height: 43.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 271.w,
                      height: 43.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Colors.white.withOpacity(0.4000000059604645),
                          ),
                          borderRadius: BorderRadius.circular(21.50.r),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 4.50.w,
                    top: 4.50.h,
                    child: Image.asset(AppImages.camerOval),
                  ),
                  Positioned(
                    left: 51.50.w,
                    top: 12.50.h,
                    child: Text(
                      'Send Message',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              AppImages.messanger,
              color: Colors.white,
            ),
            const Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
