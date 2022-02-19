import 'dart:io';

import 'package:bloc/bloc.dart';
//import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'package:foodwifi_trial/menu_manager/logic/slider_image1/slider_image1_cubit.dart';

part 'slider_image2_state.dart';

class SliderImage2Cubit extends Cubit<SliderImage2State> {
  SliderImage2Cubit() : super(SliderImage2State());

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imagePermanent = await saveImagePermanently(image.path);
      var imageName = imagePermanent.path.split('/').last;

      emit(SliderImage2State(
        slider_image2: state.slider_image2 = imagePermanent,
      ));
      print('Image PICKED!!! $imageName');
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  void deleteSliderImage2() {
    try {
      emit(SliderImage2State(
        slider_image2: state.slider_image2 = null,
      ));
      print('Slider image 2 Deleted!');
    } catch (e) {
      print('Delete failed!...$e');
    }
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
