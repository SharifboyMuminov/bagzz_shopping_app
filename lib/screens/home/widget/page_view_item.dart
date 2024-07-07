import 'package:bagzz_shopping/utils/app_colors.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:bagzz_shopping/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 12.we,
            right: 12.we,
            bottom: 12.he,
          ),
          child: SizedBox(
            width: width,
            height: 195.we,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 30.he,
          left: 270.we,
          right: 0,
          child: Text(
            "This season's latest",
            style: AppTextStyle.playfairDisplayBold.copyWith(
              fontSize: 22.sp,
              color: AppColors.black,
              backgroundColor: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
