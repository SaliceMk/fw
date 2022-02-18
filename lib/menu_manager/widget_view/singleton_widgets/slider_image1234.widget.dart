import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image1/slider_image1_cubit.dart';

import 's_widgets.dart';

class SliderImage1234Widget extends StatefulWidget {
  const SliderImage1234Widget({Key? key, required this.sliderImageType})
      : super(key: key);

  final String sliderImageType;

  @override
  _SliderImage1234WidgetState createState() => _SliderImage1234WidgetState();
}

class _SliderImage1234WidgetState extends State<SliderImage1234Widget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderImage1Cubit, SliderImage1State>(
        builder: (context, state) {
      return Expanded(
        flex: 2,
        child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
            child: state.slider_image1 != null
                ? MyBadgeWidget(
                    myBadgeContent: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const DeleteDialog(
                                itemToDelete: 'sliderImages',
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
                        // child: Image.file(
                        //   File(state.multipleImages![widget.sliderIndex].path),
                        //   width: 100,
                        //   height: 100,
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                  )
                : const DottedBorderContainer(
                    width: 100,
                    height: 100,
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Colorss.greyText,
                      size: 30,
                    ),
                    borderColor: Colorss.amberBtnBorder,
                    borderRadius: 8.0,
                    fillColor: Colorss.border,
                    sliderImageType: 'sliderImage1',
                  )),
      );
    });
  }
}
