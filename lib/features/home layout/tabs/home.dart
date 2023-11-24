import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_images.dart';
import 'package:insta_app/core/utils/app_styles.dart';
import 'package:insta_app/core/utils/componetns.dart';
import 'package:insta_app/features/home%20layout/tabs/home_screens/camera.dart';
import 'package:insta_app/features/home%20layout/tabs/home_screens/igtv.dart';
import 'package:insta_app/features/home%20layout/tabs/home_screens/messages.dart';
import 'package:insta_app/features/home%20layout/tabs/home_screens/story.dart';
import 'package:insta_app/features/home%20layout/widgets/one_post.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Componetns.openContainers(
            closedWidget: Image.asset(
              AppImages.cameraIcon,
              color: Colors.black,
            ),
            openedWidget: const CameraScreen()),
        title: Container(
          width: 105.w,
          height: 28.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.logo),
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          Componetns.openContainers(
            closedWidget: Image.asset(
              AppImages.igtv,
              color: Colors.black,
            ),
            openedWidget: const Igtv(),
          ),
          SizedBox(width: 12.w),
          Componetns.openContainers(
            closedWidget: Image.asset(
              AppImages.messanger,
              color: Colors.black,
            ),
            openedWidget: Messages(),
          ),
          SizedBox(width: 12.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 375.w,
              height: 98.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x493C3C43),
                    blurRadius: 0,
                    offset: Offset(0, 0.33),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Componetns.openContainers(
                            closedWidget: Container(
                              height: 56.h,
                              width: 56.w,
                              decoration: const ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(color: Colors.red),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.temp,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            openedWidget: const Story()),
                        Text('story', style: AppStyles.smallStyle),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 26.w,
                    );
                  },
                  itemCount: 15),
            ),
            onePost(),
            onePost(),
            onePost(),
            onePost(),
            onePost(),
            onePost(),
            onePost(),
          ],
        ),
      ),
    );
  }
}
