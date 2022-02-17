import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/logic/thumbnail_image/thumbnail_image_cubit.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({
    Key? key,
  }) : super(key: key);
  // final Widget myChild;

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
                            onPressed: () {
                              BlocProvider.of<ThumbnailImageCubit>(context)
                                  .deleteThumbnail();
                              print("After blocProvider delete");
                              // state.thumbImageC ==
                              //      null
                              //   ? print(
                              //   'deleted pressed...value is null now')
                              // : print(
                              //     'Image present///');
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
