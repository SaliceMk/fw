import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:foodwifi_trial/colors/colors.dart';

class MyBadgeWidget extends StatelessWidget {
  const MyBadgeWidget({
    Key? key,
    required this.childWidget,
    required this.myBadgeContent,
  }) : super(key: key);
  final Widget childWidget;
  final GestureDetector myBadgeContent;

  @override
  Widget build(BuildContext context) {
    return Badge(
      position: BadgePosition.topEnd(top: -4, end: -4),
      toAnimate: true,
      animationType: BadgeAnimationType.scale,
      animationDuration: Duration(milliseconds: 3),
      badgeColor: Colorss.primaryRed,
      badgeContent: myBadgeContent,
      child: childWidget,
    );
  }
}
