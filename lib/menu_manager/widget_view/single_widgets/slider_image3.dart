import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodwifi_trial/colors/colors.dart';

import 'package:foodwifi_trial/menu_manager/logic/slider_image3/slider_image3_cubit.dart';
import 'package:foodwifi_trial/menu_manager/pages/pages.dart';

import 's_widgets.dart';

class SliderImage3Widget extends StatefulWidget {
  const SliderImage3Widget({Key? key, required this.sliderImageType})
      : super(key: key);

  final String sliderImageType;

  @override
  _SliderImage3WidgetState createState() => _SliderImage3WidgetState();
}

class _SliderImage3WidgetState extends State<SliderImage3Widget> {
  //final menu39PageOb = Menu39Page();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderImage3Cubit, SliderImage3State>(
        builder: (context, state) {
      return Expanded(
        flex: 2,
        child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
            child: state.slider_image3 != null
                ? MyBadgeWidget(
                    myBadgeContent: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const DeleteDialog(
                                itemToDelete: 'sliderImage3',
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
                        onTap: () {
                          //showImageDialogThumb(context, state.slider_image3!);
                          //showImageDialogCarousel(context);
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const SliderImagesCarousel(
                                  carouselStartIndex: 2,
                                );
                              });
                        },
                        child: Image.file(
                          // File(state.multipleImages![widget.sliderIndex].path),
                          state.slider_image3!,
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
    });
  }
}
