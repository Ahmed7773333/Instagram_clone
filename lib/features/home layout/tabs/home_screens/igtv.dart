import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/features/home%20layout/widgets/igtv_item.dart';

import '../../../../core/utils/app_images.dart';

class Igtv extends StatelessWidget {
  const Igtv({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppImages.ss,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 24.r,
              ),
            ),
            title: Text(
              'IGTV',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.50,
              ),
            ),
            actions: [
              Icon(
                Icons.search,
                color: Colors.black,
                size: 24.r,
              ),
              SizedBox(width: 12.w),
              Icon(
                Icons.add,
                color: Colors.black,
                size: 24.r,
              ),
              SizedBox(width: 12.w),
            ],
          ),
          body: Column(
            children: [
              SizedBox(height: 287.h),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (187.w / 291.h),
                      mainAxisSpacing: 1.h,
                      crossAxisSpacing: 1.w),
                  itemBuilder: (context, index) {
                    return igtvItem();
                  },
                  itemCount: 6,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
