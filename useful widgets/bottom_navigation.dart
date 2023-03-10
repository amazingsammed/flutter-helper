import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:get/get.dart';
import 'package:kstu/pages/layer1/Userpage.dart';
import 'package:kstu/pages/layer1/homepage.dart';
import 'package:kstu/pages/layer1/savespage.dart';
import 'package:kstu/pages/layer1/searchpage.dart';
import 'package:kstu/widgets/colors.dart';
import 'controllers/mastercontroller.dart';
import 'pages/quizaspect/quizhome.dart';

class Master extends StatelessWidget {
  Master({Key? key}) : super(key: key);
  final MasterController controller =
      Get.put(MasterController(), permanent: false);

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomePage(),
      QuizHome(),
      SavesPage(),
      UserPage(),
      // AccountPage(),
    ];

    return Scaffold(
      body: Obx(() =>
          IndexedStack(index: controller.tabIndex.value, children: screens)),
      bottomNavigationBar: Obx(() {
        var activecolor = Colors.orange;
        var inactiveColor = Colors.white30;
        return FlashyTabBar(
          selectedIndex: controller.tabIndex.value,
          animationCurve: Curves.linear,
          showElevation: true,
          backgroundColor: MyColours().darkcolour,
          animationDuration: const Duration(milliseconds: 250),
          iconSize: 27.5,
          height: 60,
          items: [
            FlashyTabBarItem(
              icon: Icon(MdiIcons.home),
              activeColor: activecolor,
              inactiveColor: inactiveColor,
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.quiz_sharp),
              activeColor: activecolor,
              inactiveColor: inactiveColor,
              title: const Text(
                'Quiz',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            FlashyTabBarItem(
              icon: Icon(MdiIcons.bookmark),
              activeColor: activecolor,
              inactiveColor: inactiveColor,
              title: const Text(
                'Saves',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.settings),
              activeColor: activecolor,
              inactiveColor: inactiveColor,
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
          onItemSelected: controller.changeTabindex,
        );
      }),
    );
  }
}
