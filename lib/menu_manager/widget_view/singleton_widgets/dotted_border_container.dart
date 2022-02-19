// Automatic FlutterFlow imports

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:dotted_border/dotted_border.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/logic/thumbnail_image/thumbnail_image_cubit.dart';
import 'package:foodwifi_trial/menu_manager/widget_view/widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class DottedBorderContainer extends StatefulWidget {
  const DottedBorderContainer({
    //Key key,
    required this.width,
    required this.height,
    required this.icon,
    required this.borderColor,
    required this.borderRadius,
    required this.fillColor,
    required this.sliderImageType,
  });

  final double width;
  final double height;
  final Icon icon;
  final Color borderColor;
  final double borderRadius;
  final Color fillColor;
  final String sliderImageType;

  @override
  _DottedBorderContainerState createState() => _DottedBorderContainerState();
}

class _DottedBorderContainerState extends State<DottedBorderContainer> {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      child: InkWell(
        onTap: () => showCupertinoModalBottomSheet(
            backgroundColor: Colors.black.withOpacity(0.09),
            expand: false,
            context: context,
            builder: (context) =>
                BottomSheetWidget(sliderImageType: widget.sliderImageType)),
        child: Container(
            height: widget.height,
            width: widget.width,
            child: Center(
              child: Badge(
                padding: EdgeInsets.all(12),
                badgeColor: Colorss.greyText,
                badgeContent: const FaIcon(
                  FontAwesomeIcons.plus,
                  size: 24,
                  color: Colorss.bgColor,
                ),
                borderSide: const BorderSide(width: 4, color: Colorss.bgColor),
              ),
            ),
            decoration: BoxDecoration(
              color: widget.fillColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
            )),
      ),
      //borderType: BorderType.Rect,
      radius: Radius.circular(widget.borderRadius),
      borderType: BorderType.RRect,
      strokeWidth: 2,
      color: widget.borderColor,
      dashPattern: const [10, 5, 10, 5, 10, 5],
    );
  }
}
