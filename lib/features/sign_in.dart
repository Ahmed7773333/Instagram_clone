import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/config/app_routes.dart';
import 'package:insta_app/core/utils/app_colors.dart';
import 'package:insta_app/core/utils/app_images.dart';
import 'package:insta_app/core/utils/app_strings.dart';
import 'package:insta_app/core/utils/app_styles.dart';
import 'package:insta_app/core/utils/componetns.dart';

class SingInScreen extends StatelessWidget {
  SingInScreen({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset(
            AppImages.logo,
          ),
          SizedBox(
            height: 39.h,
          ),
          Componetns.customTextField(
              hint: AppStrings.username, controller: controller),
          SizedBox(
            height: 12.h,
          ),
          Componetns.customTextField(
              hint: AppStrings.password, controller: controller),
          SizedBox(
            height: 12.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Text(
                AppStrings.forgetPassword,
                style: AppStyles.smallStyle.copyWith(
                  color: AppColors.blueColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.home);
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.facebook),
              Text(
                AppStrings.loginWithFacebook,
                style: AppStyles.smallStyle.copyWith(
                  color: AppColors.blueColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            'OR',
            style: AppStyles.smallStyle,
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.signIn);
            },
            child: Text(
              AppStrings.dontHaveAccount,
              style: AppStyles.smallStyle,
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
