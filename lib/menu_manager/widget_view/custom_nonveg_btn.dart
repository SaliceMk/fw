// Automatic FlutterFlow imports

import 'package:flutter/material.dart';
// Begin custom widget code

class CustomNonVegBtn extends StatefulWidget {
  const CustomNonVegBtn({
   // Key key,
    required this.width,
    required this.height,
  }) ;

  final double width;
  final double height;

  @override
  _CustomNonVegBtnState createState() => _CustomNonVegBtnState();
}

class _CustomNonVegBtnState extends State<CustomNonVegBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:widget.height,
      width:widget.width,
    
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color(0xFFDEDEDE),
        ),
      
      child: Padding(
        padding: const EdgeInsets.only(left:8.0, right: 12),
        child:Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
       // Icon(Icons.star,color: Colors.red,),
         Stack(
        alignment: Alignment.center,
          children:const[
         Icon(Icons.crop_square_sharp, color: Color(0xFFD44545), size: 30,),
          Icon(Icons.circle, color: Color(0xFFD32F2F), size: 9),
          ]
        ),
      const Text('Non-Veg'),
      ])),
    );
  }
}