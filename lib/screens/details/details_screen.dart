import 'package:bagzz_shopping/data/models/product/product_model.dart';
import 'package:bagzz_shopping/screens/details/widget/info_categories.dart';
import 'package:bagzz_shopping/screens/details/widget/top_item.dart';
import 'package:bagzz_shopping/utils/app_colors.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:bagzz_shopping/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "bagzz",
          style: AppTextStyle.playfairDisplayBold.copyWith(
            fontSize: 22.sp,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 22.sp,
          ),
        ),
        actions: [
          Image.asset(
            "assets/images/person.png",
          ),
          12.getW(),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.he),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.we),
              child: TopItem(
                productModel: widget.productModel,
                onTabBuyNow: () {},
                onTabAddToCart: () {},
              ),
            ),
            45.getH(),
            InfoCategories(onChangedIndex: (int value) {}),
            25.getH(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.we),
              child: Text(
                "As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.",
                style: AppTextStyle.workSansRegular.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.c5B5B5B,
                ),
              ),
            ),
            35.getH(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.we),
              child: Text(
                "Material & care",
                style: AppTextStyle.workSansMedium.copyWith(
                  fontSize: 14.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.we),
              child: Text(
                "All products are made with carefully selected materials. Please handle with care for longer product life.\n- Protect from direct light, heat and rain. Should it become wet, dry it immediately with a soft cloth\n- Store in the provided flannel bag or box\n- Clean with a soft, dry cloth",
                style: AppTextStyle.workSansRegular.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.c5B5B5B,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
