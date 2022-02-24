import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodwifi_trial/colors/colors.dart';

import 'package:foodwifi_trial/menu_manager/logic/slider_image4/slider_image4_cubit.dart';
import 'package:foodwifi_trial/menu_manager/pages/pages.dart';

import 's_widgets.dart';

class SliderImage4Widget extends StatefulWidget {
  const SliderImage4Widget({Key? key, required this.sliderImageType})
      : super(key: key);

  final String sliderImageType;

  @override
  _SliderImage4WidgetState createState() => _SliderImage4WidgetState();
}

class _SliderImage4WidgetState extends State<SliderImage4Widget> {
  //final menu39PageOb = Menu39Page();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderImage4Cubit, SliderImage4State>(
        builder: (context, state) {
      return Expanded(
        flex: 2,
        child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
            child: state.slider_image4 != null
                ? MyBadgeWidget(
                    myBadgeContent: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const DeleteDialog(
                                itemToDelete: 'sliderImage4',
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
                          //showImageDialogThumb(context, state.slider_image4!);
                          //showImageDialogCarousel(context);
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const SliderImagesCarousel(
                                  carouselStartIndex: 3,
                                );
                              });
                        },
                        // onTap: () => showImageDialogCarousel(
                        //     context, state.multipleImages!, widget.sliderIndex),
                        child: Image.file(
                          // File(state.multipleImages![widget.sliderIndex].path),
                          state.slider_image4!,
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
