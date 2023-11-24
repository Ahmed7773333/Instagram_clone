import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/features/home%20layout/widgets/text_field_profile.dart';

import '../../../core/utils/app_images.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: const Color(0xFF262626),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.33,
                ),
              ),
            ),
            Text(
              'Edit Profile',
              style: TextStyle(
                color: const Color(0xFF262626),
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.33,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Done',
                style: TextStyle(
                  color: const Color(0xFF3897F0),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.33,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 95.h,
              width: 95.w,
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
            SizedBox(
              height: 12.5.h,
            ),
            Text(
              'Change Profile Photo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF3897F0),
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.05,
              ),
            ),
            SizedBox(
              height: 12.5.h,
            ),
            textFieldProfile(text: 'Jacob West', title: 'Name'),
            textFieldProfile(text: 'jacob_w', title: 'UserName'),
            textFieldProfile(title: 'Website'),
            SizedBox(
              width: 375.w,
              height: 64.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 15.h,
                    left: 16.w,
                    child: Text(
                      'Bio',
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
                        height: 64.h,
                        child: Center(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Digital goodies designer ',
                                  style: TextStyle(
                                    color: const Color(0xFF262626),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                TextSpan(
                                  text: '@pixsellz',
                                  style: TextStyle(
                                    color: const Color(0xFF05386B),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                TextSpan(
                                  text: ' \nEverything is designed.',
                                  style: TextStyle(
                                    color: const Color(0xFF262626),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  'Switch to Professional Account',
                  style: TextStyle(
                    color: const Color(0xFF3897F0),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.25,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.5.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  'Private Information',
                  style: TextStyle(
                    color: const Color(0xFF262626),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.25,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.5.h,
            ),
            textFieldProfile(text: 'jacob.west@gmail.com', title: 'Email'),
            textFieldProfile(text: '+1 202 555 0147', title: 'Phone'),
            textFieldProfile(text: 'Male', title: 'Gender'),
          ],
        ),
      ),
    );
  }
}
