// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    RootTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RootTabPage());
    },
    MenuManagerTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    OrderManagerTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    HomeTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    InsightsTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    ProfileTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    FfMenuEmptyRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: FfMenuEmptyPage());
    },
    Menu35Route.name: (routeData) {
      final args = routeData.argsAs<Menu35RouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: Menu35Page(
              appBarTitle: args.appBarTitle,
              textField1: args.textField1,
              textField2: args.textField2,
              buttonLabel: args.buttonLabel));
    },
    Menu39Route.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: Menu39Page());
    },
    Menu30Route.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: Menu30Page());
    },
    Menu36OneCategoryTypeListingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const Menu36OneCategoryTypeListingPage());
    },
    Menu31OneCollectionTypeListingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const Menu31OneCollectionTypeListingPage());
    },
    SelectSuggestedItemsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SelectSuggestedItemsPage());
    },
    OrderFrontRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const OrderFrontPage());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    InsightsFrontRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const InsightsFrontPage());
    },
    ProfileFrontRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProfileFrontPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(RootTabRoute.name, path: '/', children: [
          RouteConfig(MenuManagerTabRoute.name,
              path: 'empty-router-page',
              parent: RootTabRoute.name,
              children: [
                RouteConfig(FfMenuEmptyRoute.name,
                    path: '', parent: MenuManagerTabRoute.name),
                RouteConfig(Menu35Route.name,
                    path: 'menu35-page', parent: MenuManagerTabRoute.name),
                RouteConfig(Menu39Route.name,
                    path: 'menu39-page', parent: MenuManagerTabRoute.name),
                RouteConfig(Menu30Route.name,
                    path: 'menu30-page', parent: MenuManagerTabRoute.name),
                RouteConfig(Menu36OneCategoryTypeListingRoute.name,
                    path: 'menu36-one-category-type-listing-page',
                    parent: MenuManagerTabRoute.name),
                RouteConfig(Menu31OneCollectionTypeListingRoute.name,
                    path: 'menu31-one-collection-type-listing-page',
                    parent: MenuManagerTabRoute.name),
                RouteConfig(SelectSuggestedItemsRoute.name,
                    path: 'select-suggested-items-page',
                    parent: MenuManagerTabRoute.name)
              ]),
          RouteConfig(OrderManagerTabRoute.name,
              path: 'empty-router-page',
              parent: RootTabRoute.name,
              children: [
                RouteConfig(OrderFrontRoute.name,
                    path: '', parent: OrderManagerTabRoute.name)
              ]),
          RouteConfig(HomeTabRoute.name,
              path: 'empty-router-page',
              parent: RootTabRoute.name,
              children: [
                RouteConfig(HomeRoute.name, path: '', parent: HomeTabRoute.name)
              ]),
          RouteConfig(InsightsTabRoute.name,
              path: 'empty-router-page',
              parent: RootTabRoute.name,
              children: [
                RouteConfig(InsightsFrontRoute.name,
                    path: '', parent: InsightsTabRoute.name)
              ]),
          RouteConfig(ProfileTabRoute.name,
              path: 'empty-router-page',
              parent: RootTabRoute.name,
              children: [
                RouteConfig(ProfileFrontRoute.name,
                    path: '', parent: ProfileTabRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [RootTabPage]
class RootTabRoute extends PageRouteInfo<void> {
  const RootTabRoute({List<PageRouteInfo>? children})
      : super(RootTabRoute.name, path: '/', initialChildren: children);

  static const String name = 'RootTabRoute';
}

/// generated route for
/// [EmptyRouterPage]
class MenuManagerTabRoute extends PageRouteInfo<void> {
  const MenuManagerTabRoute({List<PageRouteInfo>? children})
      : super(MenuManagerTabRoute.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'MenuManagerTabRoute';
}

/// generated route for
/// [EmptyRouterPage]
class OrderManagerTabRoute extends PageRouteInfo<void> {
  const OrderManagerTabRoute({List<PageRouteInfo>? children})
      : super(OrderManagerTabRoute.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'OrderManagerTabRoute';
}

/// generated route for
/// [EmptyRouterPage]
class HomeTabRoute extends PageRouteInfo<void> {
  const HomeTabRoute({List<PageRouteInfo>? children})
      : super(HomeTabRoute.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'HomeTabRoute';
}

/// generated route for
/// [EmptyRouterPage]
class InsightsTabRoute extends PageRouteInfo<void> {
  const InsightsTabRoute({List<PageRouteInfo>? children})
      : super(InsightsTabRoute.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'InsightsTabRoute';
}

/// generated route for
/// [EmptyRouterPage]
class ProfileTabRoute extends PageRouteInfo<void> {
  const ProfileTabRoute({List<PageRouteInfo>? children})
      : super(ProfileTabRoute.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'ProfileTabRoute';
}

/// generated route for
/// [FfMenuEmptyPage]
class FfMenuEmptyRoute extends PageRouteInfo<void> {
  const FfMenuEmptyRoute() : super(FfMenuEmptyRoute.name, path: '');

  static const String name = 'FfMenuEmptyRoute';
}

/// generated route for
/// [Menu35Page]
class Menu35Route extends PageRouteInfo<Menu35RouteArgs> {
  Menu35Route(
      {required String appBarTitle,
      required String textField1,
      required String textField2,
      required String buttonLabel})
      : super(Menu35Route.name,
            path: 'menu35-page',
            args: Menu35RouteArgs(
                appBarTitle: appBarTitle,
                textField1: textField1,
                textField2: textField2,
                buttonLabel: buttonLabel));

  static const String name = 'Menu35Route';
}

class Menu35RouteArgs {
  const Menu35RouteArgs(
      {required this.appBarTitle,
      required this.textField1,
      required this.textField2,
      required this.buttonLabel});

  final String appBarTitle;

  final String textField1;

  final String textField2;

  final String buttonLabel;

  @override
  String toString() {
    return 'Menu35RouteArgs{appBarTitle: $appBarTitle, textField1: $textField1, textField2: $textField2, buttonLabel: $buttonLabel}';
  }
}

/// generated route for
/// [Menu39Page]
class Menu39Route extends PageRouteInfo<void> {
  const Menu39Route() : super(Menu39Route.name, path: 'menu39-page');

  static const String name = 'Menu39Route';
}

/// generated route for
/// [Menu30Page]
class Menu30Route extends PageRouteInfo<void> {
  const Menu30Route() : super(Menu30Route.name, path: 'menu30-page');

  static const String name = 'Menu30Route';
}

/// generated route for
/// [Menu36OneCategoryTypeListingPage]
class Menu36OneCategoryTypeListingRoute extends PageRouteInfo<void> {
  const Menu36OneCategoryTypeListingRoute()
      : super(Menu36OneCategoryTypeListingRoute.name,
            path: 'menu36-one-category-type-listing-page');

  static const String name = 'Menu36OneCategoryTypeListingRoute';
}

/// generated route for
/// [Menu31OneCollectionTypeListingPage]
class Menu31OneCollectionTypeListingRoute extends PageRouteInfo<void> {
  const Menu31OneCollectionTypeListingRoute()
      : super(Menu31OneCollectionTypeListingRoute.name,
            path: 'menu31-one-collection-type-listing-page');

  static const String name = 'Menu31OneCollectionTypeListingRoute';
}

/// generated route for
/// [SelectSuggestedItemsPage]
class SelectSuggestedItemsRoute extends PageRouteInfo<void> {
  const SelectSuggestedItemsRoute()
      : super(SelectSuggestedItemsRoute.name,
            path: 'select-suggested-items-page');

  static const String name = 'SelectSuggestedItemsRoute';
}

/// generated route for
/// [OrderFrontPage]
class OrderFrontRoute extends PageRouteInfo<void> {
  const OrderFrontRoute() : super(OrderFrontRoute.name, path: '');

  static const String name = 'OrderFrontRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [InsightsFrontPage]
class InsightsFrontRoute extends PageRouteInfo<void> {
  const InsightsFrontRoute() : super(InsightsFrontRoute.name, path: '');

  static const String name = 'InsightsFrontRoute';
}

/// generated route for
/// [ProfileFrontPage]
class ProfileFrontRoute extends PageRouteInfo<void> {
  const ProfileFrontRoute() : super(ProfileFrontRoute.name, path: '');

  static const String name = 'ProfileFrontRoute';
}
