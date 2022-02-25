import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodwifi_trial/colors/colors.dart';

import 'package:foodwifi_trial/menu_manager/logic/slider_image2/slider_image2_cubit.dart';
import 'package:foodwifi_trial/menu_manager/pages/pages.dart';

import 's_widgets.dart';

class SliderImage2Widget extends StatefulWidget {
  const SliderImage2Widget({Key? key, required this.sliderImageType})
      : super(key: key);

  final String sliderImageType;

  @override
  _SliderImage2WidgetState createState() => _SliderImage2WidgetState();
}

class _SliderImage2WidgetState extends State<SliderImage2Widget> {
  //final menu39PageOb = Menu39Page();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderImage2Cubit, SliderImage2State>(
        builder: (context, state) {
      return Expanded(
        flex: 2,
        child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
            child: state.slider_image2 != null
                ? MyBadgeWidget(
                    myBadgeContent: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const DeleteDialog(
                                itemToDelete: 'sliderImage2',
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
                          //showImageDialogThumb(context, state.slider_image2!);
                          //showImageDialogCarousel(context);
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const SliderImagesCarousel(
                                  carouselStartIndex: 1,
                                );
                              });
                        },
                        child: Image.file(
                          // File(state.multipleImages![widget.sliderIndex].path),
                          state.slider_image2!,
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
