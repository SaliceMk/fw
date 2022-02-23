import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

part 'slider_image1_state.dart';

class SliderImage1Cubit extends Cubit<SliderImage1State> {
  SliderImage1Cubit() : super(SliderImage1State());

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imagePermanent = await saveImagePermanently(image.path);
      var imageName = imagePermanent.path.split('/').last;

      emit(SliderImage1State(
        slider_image1: state.slider_image1 = imagePermanent,
      ));
      print('Image PICKED!!! $imageName');
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  void deleteSliderImage1() {
    try {
      emit(SliderImage1State(
        slider_image1: state.slider_image1 = null,
      ));
      print('Slider image 1 Deleted!');
    } catch (e) {
      print('Delete failed!...$e');
    }
  }

  void addImageFromMultiImagePicker(XFile image) async {
    final imagePermanent = await saveImagePermanently(image.path);

    emit(SliderImage1State(
      slider_image1: state.slider_image1 = imagePermanent,
    ));
  }
}

Future<File> saveImagePermanently(String imagePath) async {
  {
    final directory = await getApplicationDocumentsDirectory();

    final name = basename(imagePath);

    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }
}
