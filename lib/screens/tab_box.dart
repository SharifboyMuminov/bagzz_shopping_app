import 'package:bagzz_shopping/screens/home/home_screen.dart';
import 'package:bagzz_shopping/utils/app_size.dart';
import 'package:flutter/material.dart';

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
      body: IndexedStack(
        index: activePage,
        children: _screens,
      ),
    );
  }
}
