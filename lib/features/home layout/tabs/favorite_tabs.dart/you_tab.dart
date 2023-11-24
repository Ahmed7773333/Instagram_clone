import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_styles.dart';
import 'package:insta_app/features/home%20layout/widgets/one_double.dart';

import '../../../../core/utils/app_images.dart';
import '../../widgets/one_notifecaion.dart';

class YouTab extends StatelessWidget {
  const YouTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          width: 375.w,
          height: 48.h,
          child: Stack(children: [
            Positioned(
              top: 14.h,
              left: 16.w,
              child: Text(
                'Follow Requests',
                style: AppStyles.textFieldStyle,
              ),
            ),
          ]),
        ),
        SizedBox(
          width: 375.w,
          height: 106.h,
          child: Stack(
            children: [
              Positioned(
                top: 13.h,
                left: 16.w,
                child: Text(
                  'New',
                  style: AppStyles.smallStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                top: 46.h,
                child: SizedBox(
                  width: 375.w,
                  height: 60.h,
                  child: ListTile(
                    leading: Container(
                      height: 44.h,
                      width: 44.w,
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
                    subtitle: Text('karennne liked your photo. 1h',
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
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 375.w,
          height: 106.h,
          child: Stack(children: [
            Positioned(
              top: 13.h,
              left: 16.w,
              child: Text(
                'Today',
                style: AppStyles.smallStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Positioned(
              top: 46.h,
              child: SizedBox(width: 375.w, height: 60.h, child: oneDouble()),
            ),
          ]),
        ),
        SizedBox(
          width: 375.w,
          height: 317.h,
          child: Stack(children: [
            Positioned(
              top: 13.h,
              left: 16.w,
              child: Text(
                'This week',
                style: AppStyles.smallStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Positioned(
              top: 46.h,
              child: SizedBox(
                width: 375.w,
                height: 91.h,
                child: Stack(
                  children: [
                    Positioned(
                      left: 16.w,
                      top: 8.h,
                      child: SizedBox(
                        width: 375.w,
                        height: 60.h,
                        child: ListTile(
                          leading: Container(
                            height: 44.h,
                            width: 44.w,
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
                          subtitle: Text('karennne liked your photo. 1h',
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
                      ),
                    ),
                    Positioned(
                      bottom: 13.h,
                      left: 74.w,
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border_sharp,
                            color: Colors.black,
                            size: 12.r,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            'Reply',
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.4000000059604645),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 137.h,
              child: Column(
                children: [
                  oneNotifcation(),
                  oneNotifcation(),
                  oneNotifcation(),
                ],
              ),
            ),
          ]),
        ),
        SizedBox(
          width: 375.w,
          height: 317.h,
          child: Stack(children: [
            Positioned(
              top: 13.h,
              left: 16.w,
              child: Text(
                'This Month',
                style: AppStyles.smallStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Positioned(
              top: 46.h,
              child: SizedBox(
                width: 375.w,
                height: 91.h,
                child: Stack(
                  children: [
                    Positioned(
                      left: 16.w,
                      top: 8.h,
                      child: SizedBox(
                        width: 375.w,
                        height: 60.h,
                        child: ListTile(
                          leading: Container(
                            height: 44.h,
                            width: 44.w,
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
                          subtitle: Text('karennne liked your photo. 1h',
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
                      ),
                    ),
                    Positioned(
                      bottom: 13.h,
                      left: 74.w,
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border_sharp,
                            color: Colors.black,
                            size: 12.r,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            'Reply',
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.4000000059604645),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 137.h,
              child: Column(
                children: [
                  oneNotifcation(),
                  oneNotifcation(),
                  oneNotifcation(),
                ],
              ),
            ),
          ]),
        ),
      ],
    ));
  }
}
