// Automatic FlutterFlow imports

import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:dotted_border/dotted_border.dart';

class DottedBorderContainer extends StatefulWidget {
  const DottedBorderContainer({
    //Key key,
    required this.width,
    required this.height,
    required this.icon,
    required this.borderColor,
    required this.borderRadius,
    required this.fillColor,
  }) ;

  final double width;
  final double height;
  final Icon icon;
  final Color borderColor;
  final double borderRadius;
  final Color fillColor;

  @override
  _DottedBorderContainerState createState() => _DottedBorderContainerState();
}

class _DottedBorderContainerState extends State<DottedBorderContainer> {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      child: Container(
        height: widget.height,
        width: widget.width,
        child: widget.icon,
        decoration: BoxDecoration(
          color: widget.fillColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),)
        
       
        
      ),
      //borderType: BorderType.Rect,
     radius: Radius.circular(widget.borderRadius),
      borderType: BorderType.RRect,
      strokeWidth: 2,
      color:widget.borderColor,
      dashPattern: const [10, 5, 10, 5, 10, 5],
    );
  }
}