import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_images.dart';
import 'package:insta_app/features/home%20layout/tabs/add.dart';
import 'package:insta_app/features/home%20layout/tabs/favorite.dart';
import 'package:insta_app/features/home%20layout/tabs/profile.dart';

import '../tabs/home.dart';
import '../tabs/search.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  final List<Widget> _pages = [
    const HomeTab(),
    SearchTab(),
    const AddTab(),
    const FavoriteTab(),
    const ProfileTab(),
  ];

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              color: Colors.black,
              Icons.home,
              size: 30.r,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              color: Colors.black,
              Icons.search,
              size: 30.r,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              color: Colors.black,
              Icons.add_box_outlined,
              size: 30.r,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              color: Colors.black,
              Icons.favorite_outline,
              size: 30.r,
            ),
            activeIcon: Icon(
              color: Colors.black,
              Icons.favorite,
              size: 30.r,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30.h,
              width: 30.w,
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
            label: '',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
