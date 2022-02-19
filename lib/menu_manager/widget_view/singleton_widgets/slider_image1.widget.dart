import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image1/slider_image1_cubit.dart';

import 's_widgets.dart';

class SliderImage1Widget extends StatefulWidget {
  const SliderImage1Widget(
      {Key? key, required this.sliderImageType, required this.passedImage})
      : super(key: key);

  final String sliderImageType;
  final File? passedImage;

  @override
  _SliderImage1WidgetState createState() => _SliderImage1WidgetState();
}

class _SliderImage1WidgetState extends State<SliderImage1Widget> {
  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<SliderImage1Cubit, SliderImage1State>(
    //     builder: (context, state) {
    return Expanded(
      flex: 2,
      child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
          child: widget.passedImage != null
              ? MyBadgeWidget(
                  myBadgeContent: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const DeleteDialog(
                              itemToDelete: 'sliderImage1',
                            );
                          });
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colorss.bgColor,
                      size: 16,
                    ),
                  ),
                  childWidget: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: GestureDetector(
                      onTap: () {},
                      // onTap: () => showImageDialogCarousel(
                      //     context, state.multipleImages!, widget.sliderIndex),
                      child: Image.file(
                        // File(state.multipleImages![widget.sliderIndex].path),
                        widget.passedImage!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                  ))
              : DottedBorderContainer(
                  width: 100,
                  height: 100,
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colorss.greyText,
                    size: 30,
                  ),
                  borderColor: Colorss.amberBtnBorder,
                  borderRadius: 8.0,
                  fillColor: Colorss.border,
                  sliderImageType: widget.sliderImageType,
                )),
    );
    // });
  }
}
