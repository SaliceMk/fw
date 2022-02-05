// Automatic FlutterFlow imports

import 'package:flutter/material.dart';
// Begin custom widget code

class CustomBtn extends StatefulWidget {
  const CustomBtn({
    //Key key,
    required this.width,
    required this.height,
    required this.text,
  }) ;

  final double width;
  final double height;
  final String text;

  @override
  _CustomBtnState createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:widget.height,
      width:widget.width,
    
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color(0xFFDEDEDE),
        ),
      
      child: 
       Center(child: Text(widget.text)),
      
    );
  }
}