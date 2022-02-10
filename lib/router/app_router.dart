import 'package:auto_route/auto_route.dart';
import 'package:foodwifi_trial/home/pages/pages.dart';
import 'package:foodwifi_trial/order_manager/pages/pages.dart';
import 'package:foodwifi_trial/root/pages/root_tab.page.dart';
import '../profile/pages/pages.dart';
import '../insights/pages/insights_front.page.dart';
import 'package:foodwifi_trial/menu_manager/pages/pages.dart';
import 'package:flutter/material.dart';

import 'package:foodwifi_trial/router/routes/root_tab.route.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  rootTabRoute,
])
// extend the generated private router
class AppRouter extends _$AppRouter {}
