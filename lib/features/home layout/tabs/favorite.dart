import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_styles.dart';
import 'package:insta_app/features/home%20layout/tabs/favorite_tabs.dart/following_tab.dart';
import 'package:insta_app/features/home%20layout/tabs/favorite_tabs.dart/you_tab.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({super.key});

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  int curruntIndex = 0;
  final List<Widget> pages = [
    FollowingTab(),
    const YouTab(),
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

  List<String> ls = ['Following', 'You'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
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
                          child: Center(child: Text(e)),
                        ))
                    .toList(),
              ),
            ),
          ),
          SizedBox(
            height: 670.h,
            width: double.infinity,
            child: PageView(
              controller: _pageController,
              children: pages,
              onPageChanged: (index) {
                _tabController.animateTo(index);
              },
            ),
          ),
        ],
      )),
    );
  }
}
