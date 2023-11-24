import 'package:flutter/material.dart';
import 'package:insta_app/core/utils/app_styles.dart';

class AddTab extends StatelessWidget {
  const AddTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Add',
          style: AppStyles.title,
        ),
      ),
    );
  }
}
