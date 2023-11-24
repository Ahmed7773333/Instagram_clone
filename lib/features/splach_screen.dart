import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_routes.dart';
import '../core/utils/app_images.dart';

class SplachScreen extends StatelessWidget {
  static const String routeName = '/splach';
  const SplachScreen({super.key});

  Future<void> _navigateToHome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacementNamed(Routes.start);
  }

  @override
  Widget build(BuildContext context) {
    _navigateToHome(context);

    return Center(
      child: Container(
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImages.logoIcon,
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
