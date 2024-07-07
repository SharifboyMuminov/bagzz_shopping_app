import 'package:bagzz_shopping/data/local/local_varibals.dart';
import 'package:bagzz_shopping/screens/widget/dialog_item.dart';
import 'package:bagzz_shopping/utils/app_colors.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

basketDialog(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40.r),
        topLeft: Radius.circular(40.r),
      ),
    ),
    barrierColor: Colors.transparent,
    backgroundColor: AppColors.white.withOpacity(0.9),
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 22.we,
          vertical: 10.he,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: width),
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.c3E3E3E,
                borderRadius: BorderRadius.circular(22.r),
              ),
              child: SizedBox(
                width: 125.we,
                height: 2.he,
              ),
            ),
            67.getH(),
            DialogItem(
              productModel: products[1],
              onTab: () {},
            ),
            17.getH(),
            DialogItem(
              productModel: products[4],
              onTab: () {},
            ),
          ],
        ),
      );
    },
  );
}
