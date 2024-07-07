import 'package:bagzz_shopping/data/models/product/product_model.dart';
import 'package:bagzz_shopping/utils/app_colors.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:bagzz_shopping/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.onTab,
    required this.productModel,
  });

  final VoidCallback onTab;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.cF1F1F1,
        padding: EdgeInsets.only(top: 6.he, bottom: 18.he),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      onPressed: onTab,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                child: Image.asset(
                  productModel.imagePath,
                ),
              ),
              11.getH(),
              Text(
                productModel.title,
                style: AppTextStyle.playfairDisplaySemiBold.copyWith(
                  fontSize: 18.sp,
                  color: AppColors.black,
                ),
              ),
              18.getH(),
              Text(
                "Shop now",
                style: AppTextStyle.workSansMedium.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.black,
                ),
              ),
              4.getH(),
              Card(
                color: AppColors.black,
                child: SizedBox(
                  width: 88.we,
                  height: 2.he,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                size: 22.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
