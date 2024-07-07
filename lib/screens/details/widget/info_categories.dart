import 'package:bagzz_shopping/utils/app_colors.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:bagzz_shopping/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoCategories extends StatefulWidget {
  const InfoCategories({super.key, required this.onChangedIndex});

  final ValueChanged<int> onChangedIndex;

  @override
  State<InfoCategories> createState() => _InfoCategoriesState();
}

class _InfoCategoriesState extends State<InfoCategories> {
  final List<String> infoCategories = [
    "Description",
    "Shipping info",
    "Payment options",
  ];

  int activeInfoCategory = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 4.we),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          infoCategories.length,
          (index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.we),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      5.r,
                    ),
                  ),
                ),
                onPressed: () {
                  activeInfoCategory = index;
                  setState(() {});
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      infoCategories[index],
                      style: AppTextStyle.workSansMedium.copyWith(
                        fontSize: 15.sp,
                        decoration: activeInfoCategory == index
                            ? TextDecoration.underline
                            : null,
                        decorationColor: AppColors.black,
                        decorationStyle: activeInfoCategory == index
                            ? TextDecorationStyle.solid
                            : null,
                        decorationThickness: 2.he,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
