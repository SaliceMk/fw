import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image1/slider_image1_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image2/slider_image2_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image3/slider_image3_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image4/slider_image4_cubit.dart';
import 'package:provider/src/provider.dart';

class SliderImagesCarousel extends StatelessWidget {
  const SliderImagesCarousel({Key? key}) : super(key: key);

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
    List<File>? imgViewList = [
      cubitSliderImage1!,
      cubitSliderImage2!,
      cubitSliderImage3!,
      cubitSliderImage4!
    ];
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
              //itemCount: imgViewList.length,
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
                        child: Text('Slider Image ' + (index + 1).toString())),
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
                // initialPage: startImage,
              )),
        ),
      ),
    );
  }
}
