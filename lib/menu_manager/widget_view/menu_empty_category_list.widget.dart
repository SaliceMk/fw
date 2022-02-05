
import 'package:flutter/material.dart';
import 'package:foodwifi_trial/colors/colors.dart';


class MenuEmptyCategorylistWidget extends StatefulWidget {
  const MenuEmptyCategorylistWidget({required this.text1}) ;
  final String text1;
  

  @override
  _MenuEmptyCategorylistWidgetState createState() =>
      _MenuEmptyCategorylistWidgetState();
}

class _MenuEmptyCategorylistWidgetState
    extends State<MenuEmptyCategorylistWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: const BoxDecoration(
        color: Colorss.bgColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  color: Colorss.bgColor,
                ),
                child: Image.asset(
                  'assets/images/foodburger.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children:  [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: Text(
                      widget.text1,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  //   child: Text(
                  //     widget.text2,
                  //     textAlign: TextAlign.center,
                  //     style: const TextStyle(color: Colorss.greyText, fontSize: 16),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
