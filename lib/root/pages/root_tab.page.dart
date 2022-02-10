import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import '../../router/app_router.dart';

class RootTabPage extends StatelessWidget {
  const RootTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeTabRoute(), // order matters here, not in app_router
        MenuManagerTabRoute(),
        OrderManagerTabRoute(),
        InsightsTabRoute(),
        ProfileTabRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          selectedItemColor: Colorss.primaryRed,
          //unselectedItemColor: Colorss.textIconColor,
          type: BottomNavigationBarType.fixed,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              //icon: FaIcon(FontAwesomeIcons.che),
              icon: Icon(Icons.book_online),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.chartPie),
              label: 'Insights',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userAlt),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
