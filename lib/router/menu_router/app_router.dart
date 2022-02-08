import 'package:auto_route/auto_route.dart';
import 'package:foodwifi_trial/menu_manager/pages/pages.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FfMenuEmptyPage, initial: true, children: [
      AutoRoute(page: Menu36OneCategoryTypeListingPage),
      AutoRoute(page: Menu35Page),
      AutoRoute(page: Menu31OneCollectionTypeListingPage),
      AutoRoute(page: Menu39Page, children: [
        AutoRoute(page: SelectSuggestedItemsPage),
        AutoRoute(page: Menu35Page),
      ]),
      AutoRoute(page: Menu30Page),
    ]),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
