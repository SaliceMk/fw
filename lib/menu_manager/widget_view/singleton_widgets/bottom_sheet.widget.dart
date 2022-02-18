import 'package:flutter/material.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image1/slider_image1_cubit.dart';

import 'package:foodwifi_trial/menu_manager/logic/thumbnail_image/thumbnail_image_cubit.dart';
import '../../../colors/colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key, required this.sliderImageType})
      : super(key: key);

  final String sliderImageType;
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
              onTap: sliderImageType == 'sliderImage1'
                  ? () {
                      //print('Gallery pressed....');
                      BlocProvider.of<SliderImage1Cubit>(context)
                          .pickImage(ImageSource.gallery);
                      // var img = pickImage(ImageSource.gallery);
                    }
                  : () {},
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
              onTap: () {
                print('Gallery pressed....');
                BlocProvider.of<ThumbnailImageCubit>(context)
                    .pickImage(ImageSource.camera);
              },
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
