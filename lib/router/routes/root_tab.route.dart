import 'package:auto_route/auto_route.dart';

import 'package:foodwifi_trial/home/pages/pages.dart';
import 'package:foodwifi_trial/menu_manager/pages/pages.dart';
import 'package:foodwifi_trial/order_manager/pages/pages.dart';
import 'package:foodwifi_trial/root/pages/root_tab.page.dart';

import '../../insights/pages/pages.dart';
import '../../profile/pages/pages.dart';

const rootTabRoute = AutoRoute(page: RootTabPage, initial: true, children: [
  AutoRoute(page: EmptyRouterPage, name: 'MenuManagerTabRoute', children: [
    AutoRoute(
      page: FfMenuEmptyPage,
      path: '',
    ),
    AutoRoute(page: Menu35Page), //create category from fab
    AutoRoute(page: Menu39Page), //create item(long page) from fab
    AutoRoute(page: Menu30Page), //create collection from fab
    AutoRoute(
        page:
            Menu36OneCategoryTypeListingPage), //from list tile of category list
    AutoRoute(
        page:
            Menu31OneCollectionTypeListingPage), // from list tile of collection list
    AutoRoute(page: SelectSuggestedItemsPage),
  ]),
  AutoRoute(page: EmptyRouterPage, name: 'OrderManagerTabRoute', children: [
    AutoRoute(page: OrderFrontPage, path: ''),
  ]),
  AutoRoute(
      page: EmptyRouterPage,
      name: 'HomeTabRoute',
      children: [AutoRoute(page: HomePage, path: '')]),
  AutoRoute(page: EmptyRouterPage, name: 'InsightsTabRoute', children: [
    AutoRoute(page: InsightsFrontPage, path: ''),
  ]),
  AutoRoute(
    page: EmptyRouterPage,
    name: 'ProfileTabRoute',
    children: [
      AutoRoute(page: ProfileFrontPage, path: ''),
    ],
  ),
]);
