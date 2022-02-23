import 'dart:io';

import 'package:bloc/bloc.dart';
//import 'package:equatable/equatable.dart';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'slider_image3_state.dart';

class SliderImage3Cubit extends Cubit<SliderImage3State> {
  SliderImage3Cubit() : super(SliderImage3State());

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imagePermanent = await saveImagePermanently(image.path);
      var imageName = imagePermanent.path.split('/').last;

      emit(SliderImage3State(
        slider_image3: state.slider_image3 = imagePermanent,
      ));
      print('Image PICKED!!! $imageName');
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  void deleteSliderImage3() {
    try {
      emit(SliderImage3State(
        slider_image3: state.slider_image3 = null,
      ));
      print('Slider image 3 Deleted!');
    } catch (e) {
      print('Delete failed!...$e');
    }
  }

  void addImageFromMultiImagePicker(XFile image) async {
    final imagePermanent = await saveImagePermanently(image.path);

    emit(SliderImage3State(
      slider_image3: state.slider_image3 = imagePermanent,
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
