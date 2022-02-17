import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:path_provider/path_provider.dart';

import 'package:path/path.dart';

part 'thumbnail_image_state.dart';

class ThumbnailImageCubit extends Cubit<ThumbnailImageState> {
  ThumbnailImageCubit() : super(ThumbnailImageState());

  Future pickImage(ImageSource source) async {
    try {
      //File? image ;
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      //final imageTempo = File(image.path);
      //var imageName = imageTempo.path.split('/').last;

      final imagePermanent = await saveImagePermanently(image.path);
      var imageName = imagePermanent.path.split('/').last;

      emit(ThumbnailImageState(
        thumbImageC: state.thumbImageC = imagePermanent,
      ));
      print('Image PICKED!!! $imageName');
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  void deleteThumbnail() {
    try {
      emit(ThumbnailImageState(
        thumbImageC: state.thumbImageC = null,
      ));
      print('Dleted!');
    } catch (e) {
      print('Delete failed!...$e');
    }
  }

  //multiple images

}

Future<File> saveImagePermanently(String imagePath) async {
  {
    final directory = await getApplicationDocumentsDirectory();
    print('directory----------------------------');
    print(directory);
    final name = basename(imagePath);

    final image = File('${directory.path}/$name');
    print('image from save//////---------');
    print(image);
    return File(imagePath).copy(image.path);
  }
}
