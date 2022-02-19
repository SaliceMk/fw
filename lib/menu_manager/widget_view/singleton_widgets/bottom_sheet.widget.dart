import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image/slider_image_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image1/slider_image1_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image2/slider_image2_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image3/slider_image3_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image4/slider_image4_cubit.dart';

import 'package:foodwifi_trial/menu_manager/logic/thumbnail_image/thumbnail_image_cubit.dart';
import '../../../colors/colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key, required this.sliderImageType})
      : super(key: key);

  final String sliderImageType;

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    final cubitSliderImage1 =
        context.watch<SliderImage1Cubit>().state.slider_image1;
    final cubitSliderImage2 =
        context.watch<SliderImage2Cubit>().state.slider_image2;
    final cubitSliderImage3 =
        context.watch<SliderImage3Cubit>().state.slider_image3;
    final cubitSliderImage4 =
        context.watch<SliderImage4Cubit>().state.slider_image4;

    List<File?> sliderImagesList = [];

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
              onTap: widget.sliderImageType == 'sliderImage1'
                  ? () async {
                      print('Gallery pressed for Slider Image 1....');
                      BlocProvider.of<SliderImage1Cubit>(context)
                          .pickImage(ImageSource.gallery);
                      context
                          .read<SliderImageCubit>()
                          .addSliderImages(cubitSliderImage1);

                      // var img = pickImage(ImageSource.gallery);
                    }
                  : widget.sliderImageType == 'sliderImage2'
                      ? () {
                          print('Gallery pressed for Slider Image 2...');
                          BlocProvider.of<SliderImage2Cubit>(context)
                              .pickImage(ImageSource.gallery);

                          setState(() {
                            sliderImagesList.insert(1, cubitSliderImage2);
                          });
                        }
                      : widget.sliderImageType == 'sliderImage3'
                          ? () {
                              print('Gallery pressed for Slider Image 3...');
                              BlocProvider.of<SliderImage3Cubit>(context)
                                  .pickImage(ImageSource.gallery);

                              setState(() {
                                sliderImagesList.insert(2, cubitSliderImage3);
                              });
                            }
                          : widget.sliderImageType == 'sliderImage4'
                              ? () {
                                  print(
                                      'Gallery pressed for Slider Image 4...');
                                  BlocProvider.of<SliderImage4Cubit>(context)
                                      .pickImage(ImageSource.gallery);
                                  setState(() {
                                    sliderImagesList.insert(
                                        3, cubitSliderImage4);
                                  });
                                }
                              : () {
                                  print('Gallery pressed for Thumbnail....');
                                  BlocProvider.of<ThumbnailImageCubit>(context)
                                      .pickImage(ImageSource.gallery);
                                },
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
              onTap: widget.sliderImageType == 'sliderImage1'
                  ? () {
                      print('Camera pressed for Slider Image 1....');
                      BlocProvider.of<SliderImage1Cubit>(context)
                          .pickImage(ImageSource.camera);
                      // var img = pickImage(ImageSource.gallery);
                    }
                  : widget.sliderImageType == 'sliderImage2'
                      ? () {
                          print('Camera pressed for Slider Image 2....');
                          BlocProvider.of<SliderImage2Cubit>(context)
                              .pickImage(ImageSource.camera);
                        }
                      : widget.sliderImageType == 'sliderImage3'
                          ? () {
                              print('Camera pressed for Slider Image 3....');
                              BlocProvider.of<SliderImage3Cubit>(context)
                                  .pickImage(ImageSource.camera);
                            }
                          : widget.sliderImageType == 'sliderImage4'
                              ? () {
                                  print(
                                      'Camera pressed for Slider Image 4....');
                                  BlocProvider.of<SliderImage4Cubit>(context)
                                      .pickImage(ImageSource.camera);
                                }
                              : () {
                                  print('Camera pressed for Thumbnail....');
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
