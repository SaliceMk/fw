part of 'slider_image_cubit.dart';

enum ImageSelectionStatus {
  success,
  fail,
}

class SliderImageState {
  SliderImageState({this.multipleImages, this.imageSelectionStatus});

  List<XFile>? multipleImages;
  ImageSelectionStatus? imageSelectionStatus;
  //var multipleImages =  List<XFile?>.filled(4, null, growable: false);

  //@override
  //List<Object> get props => ];
}

//class SliderImageInitial extends SliderImageState {}
