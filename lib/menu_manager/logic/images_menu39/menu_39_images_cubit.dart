import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'menu_39_images_state.dart';

class Menu39ImagesCubit extends Cubit<Menu39ImagesState> {
  Menu39ImagesCubit() : super(Menu39ImagesState(thumbImageC: null));

  Future pickImage(ImageSource source) async {
    try {
      //File? image ;
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTempo = File(image.path);
      //image = imageTempo;
      //state.thumbImageC = image.toString();
      emit(Menu39ImagesState(thumbImageC: state.thumbImageC = imageTempo));
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  void deleteThumbnail() {
    emit(Menu39ImagesState(thumbImageC: state.thumbImageC = null));
  }
}
