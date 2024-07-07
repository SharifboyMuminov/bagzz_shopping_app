import 'package:bagzz_shopping/data/models/product/product_model.dart';
import 'package:bagzz_shopping/utils/app_colors.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:bagzz_shopping/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopItem extends StatelessWidget {
  const TopItem({
    super.key,
    required this.productModel,
    required this.onTabBuyNow,
    required this.onTabAddToCart,
  });

  final ProductModel productModel;
  final VoidCallback onTabBuyNow;
  final VoidCallback onTabAddToCart;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          productModel.imagePath,
        ),
        15.getW(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productModel.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.playfairDisplayBold.copyWith(
                  fontSize: 22.sp,
                ),
              ),
              4.getH(),
              Text(
                "Wallet with chain",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.workSansRegular.copyWith(
                  fontSize: 14.sp,
                ),
              ),
              Text(
                "Style #36252 0YK0G 1000",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.workSansRegular.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.c848484,
                ),
              ),
              9.getH(),
              Text(
                "\$564",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.workSansBold.copyWith(
                  fontSize: 20.sp,
                ),
              ),
              15.getH(),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.we,
                    vertical: 12.he,
                  ),
                  backgroundColor: AppColors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Buy now".toUpperCase(),
                  style: AppTextStyle.workSansMedium.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.cFBFBFB,
                  ),
                ),
              ),
              15.getH(),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      5.r,
                    ),
                  ),
                ),
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Add to cart".toUpperCase(),
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
        ),
      ],
    );
  }
}
