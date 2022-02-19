import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image/slider_image_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image1/slider_image1_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image2/slider_image2_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image3/slider_image3_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image4/slider_image4_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/thumbnail_image/thumbnail_image_cubit.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({
    Key? key,
    required this.itemToDelete,
    //required this.index,
  }) : super(key: key);
  // final Widget myChild;
  final String itemToDelete;
  //final int index;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colorss.bgColor,
          ),
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height / 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                flex: 4,
                child: Center(
                  child: Text(
                    'Are you sure you want to delete the Thumbnail Image?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Center(
                                child: Text(
                              'Cancel',
                              style: TextStyle(color: Colorss.primaryRed),
                            )),
                          )),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colorss.primaryRed),
                            onPressed: itemToDelete == 'sliderImage1'
                                ? () {
                                    BlocProvider.of<SliderImage1Cubit>(context)
                                        .deleteSliderImage1();
                                    Navigator.pop(context);
                                  }
                                : itemToDelete == 'sliderImage2'
                                    ? () {
                                        BlocProvider.of<SliderImage2Cubit>(
                                                context)
                                            .deleteSliderImage2();
                                        //context.router.pop();
                                        Navigator.pop(context);
                                      }
                                    : itemToDelete == 'sliderImage3'
                                        ? () {
                                            BlocProvider.of<SliderImage3Cubit>(
                                                    context)
                                                .deleteSliderImage3();
                                            Navigator.pop(context);
                                          }
                                        : itemToDelete == 'sliderImage4'
                                            ? () {
                                                BlocProvider.of<
                                                            SliderImage4Cubit>(
                                                        context)
                                                    .deleteSliderImage4();
                                                Navigator.pop(context);
                                              }
                                            : () {
                                                BlocProvider.of<
                                                            ThumbnailImageCubit>(
                                                        context)
                                                    .deleteThumbnail();
                                                Navigator.pop(context);
                                              },
                            child: Text('Yes')),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
