import 'package:bagzz_shopping/screens/home/widget/page_view_item.dart';
import 'package:bagzz_shopping/utils/app_colors.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {

  final PageController _pageController = PageController();

  int activePageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 195.he,
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: const [
              PageViewItem(imagePath: "assets/images/img.png"),
              PageViewItem(imagePath: "assets/images/img_1.png"),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.we),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.we, vertical: 14.he),
                      backgroundColor: AppColors.black,
                    ),
                    onPressed: () {
                      _pageController.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    },
                    child: SvgPicture.asset(
                      "assets/icons/arrow_back.svg",
                      width: 27.we,
                      height: 23.he,
                    ),
                  ),
                  2.getW(),
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.we, vertical: 14.he),
                      backgroundColor: AppColors.black,
                    ),
                    onPressed: () {
                      if (activePageIndex == 0) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.linear,
                        );
                        activePageIndex++;
                      } else {
                        activePageIndex--;
                        _pageController.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.linear,
                        );
                      }
                    },
                    child: SvgPicture.asset(
                      "assets/icons/arrow_right.svg",
                      width: 27.we,
                      height: 23.he,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
