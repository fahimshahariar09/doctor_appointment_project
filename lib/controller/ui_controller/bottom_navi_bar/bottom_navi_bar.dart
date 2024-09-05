

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:doctor_appointment_project/view/screen/category/category_screen.dart';
import 'package:doctor_appointment_project/view/screen/home_page/home_page.dart';
import 'package:doctor_appointment_project/view/screen/search/search_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BottomNaviBarController extends GetxController{
  final pageController = PageController(initialPage : 0);
  final NotchBottomBarController nController = NotchBottomBarController(index: 0);
  RxInt index = 0.obs;
  RxInt maxCount = 3.obs;
  RxInt page = 0.obs;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  RxList<Widget> bottomBarPage = [
    const CategoryScreen(),
    const SearchScreen(),
    const HomePage(),
  ].obs;

}