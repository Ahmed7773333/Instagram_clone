import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_images.dart';
import 'package:insta_app/core/utils/componetns.dart';
import 'package:insta_app/features/home%20layout/widgets/one_tab_search.dart';

class SearchTab extends StatelessWidget {
  SearchTab({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Componetns.customTextField(
                    hint: 'Search', controller: controller),
                Image.asset(
                  AppImages.nametag,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 48.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    oneTab(text: 'IGTV', image: AppImages.igtv),
                    oneTab(text: 'Shop', image: AppImages.bagIcon),
                    oneTab(text: 'Style'),
                    oneTab(text: 'Sports'),
                    oneTab(text: 'Auto'),
                    oneTab(text: 'Sports'),
                    oneTab(text: 'Sports'),
                    oneTab(text: 'Sports'),
                    oneTab(text: 'Sports'),
                    oneTab(text: 'Sports'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: (124.w / 124.h),
                    mainAxisSpacing: 1.h,
                    crossAxisSpacing: 1.w),
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImages.sliderTemp2),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8.h,
                        right: 9.w,
                        child: Image.asset(AppImages.galleryIcon,
                            color: Colors.white),
                      ),
                    ],
                  );
                },
                itemCount: 43,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
