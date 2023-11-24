import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/componetns.dart';

// ignore: use_key_in_widget_constructors
class Messages extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'jacob_w',
              style: AppStyles.smallStyle,
            ),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black,
              size: 15.r,
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.add,
            color: Colors.black,
            size: 29.r,
          ),
          SizedBox(width: 12.w),
        ],
      ),
      body: Column(
        children: [
          Componetns.customTextField(hint: 'Search', controller: controller),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return SizedBox(
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
                    title: Text(
                      'joshua_l',
                      style: TextStyle(
                        color: const Color(0xFF262626),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    subtitle: Text(
                      'Have a nice day, bro!',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4000000059604645),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.10,
                      ),
                    ),
                    trailing: Container(
                      width: 24.w,
                      height: 24.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.cameraIcon),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 12,
            ),
          ),
        ],
      ),
    );
  }
}
