import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/config/app_routes.dart';
import 'package:insta_app/core/utils/app_colors.dart';
import 'package:insta_app/core/utils/app_images.dart';
import 'package:insta_app/core/utils/app_strings.dart';
import 'package:insta_app/core/utils/app_styles.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 4,
            ),

            Image.asset(
              AppImages.logo,
            ),
            SizedBox(
              height: 52.h,
            ),
            Container(
              height: 85.h,
              width: 85.w,
              decoration: const ShapeDecoration(
                shape: OvalBorder(),
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.temp,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ), //
            Text(
              'jacob_w',
              style: AppStyles.smallStyle,
            ),
            SizedBox(
              height: 12.h,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.signIn);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blueColor,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.r),
                    ),
                  ),
                  fixedSize: Size(307.w, 44.h)),
              child: Center(
                child: Text(
                  AppStrings.login,
                  style: AppStyles.buttonText,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),

            Text(
              AppStrings.switchAccount,
              style: AppStyles.smallStyle.copyWith(
                color: AppColors.blueColor,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.signIn);
              },
              child: Text(
                AppStrings.dontHaveAccount,
                style: AppStyles.smallStyle,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
