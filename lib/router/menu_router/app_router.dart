import 'package:auto_route/auto_route.dart';
import 'package:foodwifi_trial/menu_manager/pages/pages.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    page: FfMenuEmptyPage,
    initial: true,
  ),
  AutoRoute(page: Menu35Page), //create category from fab

  AutoRoute(page: Menu39Page), //create item(long page) from fab

  AutoRoute(page: Menu30Page), //create collection from fab

  AutoRoute(
      page: Menu36OneCategoryTypeListingPage), //from list tile of category list
  AutoRoute(
      page:
          Menu31OneCollectionTypeListingPage), // from list tile of collection list

  AutoRoute(page: SelectSuggestedItemsPage), //button in ItemCreate page
])
// extend the generated private router
class AppRouter extends _$AppRouter {}
