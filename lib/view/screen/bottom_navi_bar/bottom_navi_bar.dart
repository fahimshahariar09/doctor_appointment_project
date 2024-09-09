import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:doctor_appointment_project/controller/ui_controller/bottom_navi_bar/bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNaviBar extends StatelessWidget {
  const BottomNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNaviBarController bottomNaviBarController =
        Get.put(BottomNaviBarController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
        body: PageView(
          controller: bottomNaviBarController.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(bottomNaviBarController.bottomBarPage.length,
              (index) => bottomNaviBarController.bottomBarPage[index]),
        ),
        extendBody: true,
        bottomNavigationBar: (bottomNaviBarController.bottomBarPage.length <=
                bottomNaviBarController.maxCount.value)
            ? AnimatedNotchBottomBar(
                notchBottomBarController: bottomNaviBarController.nController,
                color: Colors.white,
                showLabel: true,
                textOverflow: TextOverflow.visible,
                maxLine: 1,
                shadowElevation: 10,
                kBottomRadius: 28.0,
                notchColor: const Color(0xff22A6FE),
                removeMargins: false,
                bottomBarWidth: MediaQuery.sizeOf(context).width,
                showShadow: false,
                durationInMilliSeconds: 300,
                showBottomRadius: true,
                itemLabelStyle: const TextStyle(fontSize: 10, color: Color(0xff000000)),
                elevation: 1,
                bottomBarItems: [
                  buildBottomBarItem(icon: Icons.dashboard, label: 'Category'),
                  buildBottomBarItem(icon: Icons.search, label: 'Search'),
                  buildBottomBarItem(icon: Icons.home, label: 'Home'),
                ],
                onTap: (index) {
                  bottomNaviBarController.pageController.jumpToPage(index);
                },
                kIconSize: 20,
              )
            : null
    );
  }

  BottomBarItem buildBottomBarItem({required IconData icon, required String label}) {
    return BottomBarItem(
      inActiveItem: Icon(
        icon,
        color: Colors.black,
      ),
      activeItem: Icon(
        icon,
        color: Colors.white,
      ),
      itemLabel: label,
    );
  }
}
