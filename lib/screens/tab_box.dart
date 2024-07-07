import 'package:bagzz_shopping/screens/home/home_screen.dart';
import 'package:bagzz_shopping/utils/app_colors.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:bagzz_shopping/utils/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  final List<Widget> _screens = const [
    HomeScreen(),
  ];

  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: activePage,
            children: _screens,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 20.he,
              left: 12.we,
              right: 12.we,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(69.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(0.14),
                      blurRadius: 56,
                      spreadRadius: 0,
                      offset: const Offset(0, 14),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.he),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/home.svg",
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/search.svg",
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/favorite.svg",
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.r),
                                topLeft: Radius.circular(40.r),
                              ),
                            ),
                            barrierColor: Colors.transparent,
                            backgroundColor: AppColors.white.withOpacity(0.8),
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
                                        borderRadius:
                                            BorderRadius.circular(22.r),
                                      ),
                                      child: SizedBox(
                                        width: 125.we,
                                        height: 2.he,
                                      ),
                                    ),
                                    67.getH(),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/img_3.png",
                                          width: 81.we,
                                          height: 81.we,
                                        ),
                                        13.getW(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Berkely",
                                              style: AppTextStyle
                                                  .playfairDisplaySemiBold
                                                  .copyWith(
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                            5.getH(),
                                            Text(
                                              "Wallet with chain",
                                              style: AppTextStyle
                                                  .workSansRegular
                                                  .copyWith(
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Text(
                                              "Style #36252 0YK0G 1000",
                                              style: AppTextStyle
                                                  .workSansRegular
                                                  .copyWith(
                                                fontSize: 12.sp,
                                                color: AppColors.c848484,
                                              ),
                                            ),
                                            14.getH(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/basket.svg",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
