import 'package:bagzz_shopping/screens/home/widget/my_page_view.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:bagzz_shopping/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        actions: [
          Image.asset(
            "assets/images/person.png",
          ),
          12.getW(),
        ],
      ),
      body: Column(
        children: [
          20.getH(),
          const MyPageView(),
          20.getH(),
        ],
      ),
    );
  }
}
