import 'package:bagzz_shopping/data/models/product/product_model.dart';
import 'package:bagzz_shopping/utils/app_colors.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:bagzz_shopping/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogItem extends StatelessWidget {
  const DialogItem({
    super.key,
    required this.productModel,
    required this.onTab,
  });

  final ProductModel productModel;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              productModel.imagePath,
              width: 81.we,
              height: 81.we,
            ),
            13.getW(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.title,
                  style: AppTextStyle.playfairDisplaySemiBold.copyWith(
                    fontSize: 18.sp,
                  ),
                ),
                5.getH(),
                Text(
                  "Wallet with chain",
                  style: AppTextStyle.workSansRegular.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  "Style #36252 0YK0G 1000",
                  style: AppTextStyle.workSansRegular.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.c848484,
                  ),
                ),
                11.getH(),
                TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.we, vertical: 3.he),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                    ),
                  ),
                  onPressed: onTab,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Remove".toUpperCase(),
                        style: AppTextStyle.workSansMedium.copyWith(
                          fontSize: 15.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.black,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 2.he,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        21.getH(),
        Card(
          color: AppColors.black,
          child: SizedBox(
            width: double.infinity,
            height: 1.he,
          ),
        ),
      ],
    );
  }
}
