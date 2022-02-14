import 'package:flutter/material.dart';
import '../../colors/colors.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var longitude = MediaQuery.of(context).size.height;
    return Container(
      height: longitude / 6,
      decoration: const BoxDecoration(color: Colorss.primaryRed),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              splashColor: Colorss.primaryRed,
              onTap: () => print('Gallery pressed....'),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.images,
                      color: Colorss.bgColor,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Gallery',
                      style: TextStyle(
                          color: Colorss.bgColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 2,
            color: Colorss.bgColor,
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () => print('Camera pressed....'),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.camera,
                      color: Colorss.bgColor,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Camera',
                      style: TextStyle(
                          color: Colorss.bgColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}