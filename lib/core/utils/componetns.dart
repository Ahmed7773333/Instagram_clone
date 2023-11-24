import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_app/core/utils/app_styles.dart';

import 'app_colors.dart';

class Componetns {
  static Widget customTextField({
    required String hint,
    bool? isPassword,
    bool? isShow,
    VoidCallback? onPressed,
    IconData? icon,
    required TextEditingController controller,
  }) {
    return SizedBox(
      width: 327.w,
      height: 36.h,
      child: TextFormField(
        style: AppStyles.smallStyle,
        controller: controller,
        obscureText: isPassword ?? false ? (isShow ?? false) : false,
        validator: (value) {
          if (value?.trim().isEmpty ?? false) {
            return 'Field can\'t be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppStyles.textFieldStyle,
          prefixIcon: Icon(
            icon,
            size: 30.sp,
            color: AppColors.primary,
          ),
          suffixIcon: isPassword ?? false
              ? InkWell(
                  onTap: onPressed,
                  child: Icon(
                    !(isShow ?? false)
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColors.primary,
                    size: 30.sp,
                  ),
                )
              : null,
        ),
      ),
    );
  }

  static Widget openContainers({Widget? closedWidget, Widget? openedWidget}) {
    return OpenContainer(
      closedElevation: 0,
      openElevation: 0,
      transitionDuration: const Duration(milliseconds: 500),
      closedColor: Colors.transparent,
      openColor: Colors.transparent,
      closedBuilder: (BuildContext context, void Function() action) {
        return closedWidget!;
      },
      openBuilder:
          (BuildContext context, void Function({Object? returnValue}) action) {
        return openedWidget!;
      },
    );
  }
}
