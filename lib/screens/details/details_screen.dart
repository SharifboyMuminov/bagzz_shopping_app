import 'package:bagzz_shopping/data/models/product/product_model.dart';
import 'package:bagzz_shopping/screens/details/widget/top_item.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:bagzz_shopping/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.productModel});

  final ProductModel productModel;

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
        padding: EdgeInsets.symmetric(horizontal: 12.we),
        child: Column(
          children: [
            10.getH(),
            TopItem(
              productModel: productModel,
              onTabBuyNow: () {},
              onTabAddToCart: () {},
            ),
          ],
        ),
      ),
    );
  }
}
