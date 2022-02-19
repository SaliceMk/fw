import 'dart:io';

import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

part 'slider_image_state.dart';

class SliderImageCubit extends Cubit<SliderImageState> {
  SliderImageCubit() : super(SliderImageState());
  void addSliderImages(File? image) {
    if (image == null) {
      print('........NUll image.......');
      return;
    }

    state.sliderImagesList!.add(image);
    emit(SliderImageState(sliderImagesList: state.sliderImagesList));
    print(state.sliderImagesList);
  }
}
