import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/config/app_routes.dart';
import 'package:insta_app/core/utils/app_images.dart';
import 'package:insta_app/core/utils/app_styles.dart';
import 'package:insta_app/features/home%20layout/widgets/grid_tab.dart';

import '../widgets/drawer.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  int curruntIndex = 0;
  final List<Widget> pages = [
    gridTab(),
    Center(
      child: Image.asset(
        AppImages.logo,
      ),
    ),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: curruntIndex);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _pageController.animateToPage(
          _tabController.index,
          duration: const Duration(milliseconds: 50),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  List<Icon> ls = [
    Icon(Icons.grid_on_rounded, color: Colors.black, size: 20.r),
    Icon(Icons.perm_contact_calendar_sharp, color: Colors.black, size: 20.r)
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AppImages.lock),
            SizedBox(
              width: 2.w,
            ),
            Text(
              'jacob_w',
              style: AppStyles.smallStyle,
            ),
            SizedBox(
              width: 2.w,
            ),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black,
              size: 15.r,
            ),
          ],
        ),
        centerTitle: true,
      ),
      endDrawer: drawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 315.h,
              width: 375.w,
              child: Stack(
                children: [
                  Positioned(
                    left: 11.w,
                    child: Container(
                      height: 96.h,
                      width: 96.w,
                      decoration: const ShapeDecoration(
                        shape: OvalBorder(
                          side: BorderSide(color: Color(0xffC7C7CC)),
                        ),
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
                    top: 30.h,
                    right: 28.w,
                    child: SizedBox(
                      width: 211.w,
                      height: 40.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.w,
                            top: 21.h,
                            child: Text(
                              'Posts',
                              textAlign: TextAlign.center,
                              style: AppStyles.smallStyle,
                            ),
                          ),
                          Positioned(
                            left: 68.w,
                            top: 21.h,
                            child: Text(
                              'Followers',
                              textAlign: TextAlign.center,
                              style: AppStyles.smallStyle,
                            ),
                          ),
                          Positioned(
                            left: 147.w,
                            top: 21.h,
                            child: Text(
                              'Following',
                              textAlign: TextAlign.center,
                              style: AppStyles.smallStyle,
                            ),
                          ),
                          Positioned(
                            left: 7.w,
                            top: 0,
                            child: Text('54',
                                textAlign: TextAlign.center,
                                style: AppStyles.smallStyle),
                          ),
                          Positioned(
                            left: 81.50.w,
                            top: 0,
                            child: Text('834',
                                textAlign: TextAlign.center,
                                style: AppStyles.smallStyle),
                          ),
                          Positioned(
                            left: 163.50.w,
                            top: 0,
                            child: Text('162',
                                textAlign: TextAlign.center,
                                style: AppStyles.smallStyle),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 108.h,
                    left: 16.w,
                    child: SizedBox(
                      width: 343.w,
                      height: 58.h,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jacob West',
                            style: TextStyle(
                              color: const Color(0xFF262626),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 1),
                          SizedBox(
                            width: 343.w,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Digital goodies designer ',
                                    style: TextStyle(
                                      color: const Color(0xFF262626),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '@pixsellz \n',
                                    style: TextStyle(
                                      color: const Color(0xFF05386B),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Everything is designed.',
                                    style: TextStyle(
                                      color: const Color(0xFF262626),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 172.h,
                    left: 16.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.profile);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(343.w, 29.h),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0x2D3C3C43)),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation: 0,
                      ),
                      child: Center(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: const Color(0xFF262626),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15.h,
                    left: 14.w,
                    child: Column(
                      children: [
                        Container(
                          height: 56.h,
                          width: 56.w,
                          decoration: const ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(
                                width: 1,
                                color: Color(0xffC7C7CC),
                              ),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 20.r,
                            ),
                          ),
                        ),
                        Text(
                          'New',
                          style: AppStyles.smallStyle,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 15.h,
                    left: 100.w,
                    child: Column(
                      children: [
                        Image.asset(AppImages.friends),
                        Text(
                          'Friends',
                          style: AppStyles.smallStyle,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 15.h,
                    left: 182.w,
                    child: Column(
                      children: [
                        Image.asset(AppImages.sport),
                        Text(
                          'Sports',
                          style: AppStyles.smallStyle,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 15.h,
                    left: 264.w,
                    child: Column(
                      children: [
                        Image.asset(AppImages.design),
                        Text(
                          'Design',
                          style: AppStyles.smallStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 2,
              child: SizedBox(
                width: 360.w,
                height: 44.h,
                child: TabBar(
                  dividerColor: const Color(0x00FFFFF0),
                  controller: _tabController,
                  indicatorColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.black,
                  indicatorWeight: 3,
                  labelStyle: AppStyles.smallStyle.copyWith(fontSize: 16.sp),
                  tabs: ls
                      .map((e) => Tab(
                            height: 30,
                            child: Center(child: e),
                          ))
                      .toList(),
                ),
              ),
            ),
            SizedBox(
              height: 500.h,
              child: PageView(
                controller: _pageController,
                children: pages,
                onPageChanged: (index) {
                  _tabController.animateTo(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
