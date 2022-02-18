import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

part 'slider_image_state.dart';

class SliderImageCubit extends Cubit<SliderImageState> {
  //SliderImageCubit() : super(SliderImageState());
  SliderImageCubit() : super(SliderImageState());

  Future multiImagePicker() async {
    List<XFile>? _images = await ImagePicker().pickMultiImage();

    if (_images != null && _images.isNotEmpty && _images.length == 4) {
      emit(SliderImageState(
          multipleImages: state.multipleImages = _images,
          imageSelectionStatus: state.imageSelectionStatus =
              ImageSelectionStatus.success));
    } else {
      print('---------Failed to select right number of images!-------------');
      emit(SliderImageState(
          imageSelectionStatus: state.imageSelectionStatus =
              ImageSelectionStatus.fail));
      return;
    }
  }
}
