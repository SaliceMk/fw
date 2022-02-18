import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image/slider_image_cubit.dart';

import 'package:foodwifi_trial/menu_manager/logic/thumbnail_image/thumbnail_image_cubit.dart';
import '../../widget_view/widgets.dart';

class SliderSingleImage extends StatefulWidget {
  const SliderSingleImage({Key? key, required this.sliderIndex})
      : super(key: key);

  final int sliderIndex;

  @override
  _SliderSingleImageState createState() => _SliderSingleImageState();
}

class _SliderSingleImageState extends State<SliderSingleImage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderImageCubit, SliderImageState>(
      builder: (context, state) {
        return Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
            child: state.multipleImages != null
                ? MyBadgeWidget(
                    myBadgeContent: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return DeleteDialog(
                                itemToDelete: 'sliderImages',
                                // index: widget.sliderIndex,
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
                        onTap: () => showImageDialogCarousel(
                            context, state.multipleImages!, widget.sliderIndex),
                        child: Image.file(
                          File(state.multipleImages![widget.sliderIndex].path),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                : showDottedBoxContainer(),
          ),
        );
      },
    );
  }
}

showDottedBoxContainer() {
  return const DottedBorderContainer(
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
    sliderImageType: '',
  );
}

showImageDialogCarousel(context, imgViewList, startImage) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colorss.bgColor,
              ),
              child: CarouselSlider.builder(
                  itemCount: imgViewList.length,
                  itemBuilder: (context, index, realIndex) {
                    final sliderImage = imgViewList[index];
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 10,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.file(
                                // File(state.multipleImages![widget.sliderIndex].path),
                                //sliderImage,
                                File(sliderImage.path),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Expanded(
                            flex: 1,
                            child:
                                Text('Slider Image ' + (index + 1).toString())),
                      ],
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 0.8,
                    height: 350,
                    //aspectRatio: 16 / 9,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enableInfiniteScroll: false,
                    initialPage: startImage,
                  )),
            ),
          ),
        );
      });
}
