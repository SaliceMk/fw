import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:foodwifi_trial/colors/colors.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image/slider_image_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image1/slider_image1_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image2/slider_image2_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image3/slider_image3_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image4/slider_image4_cubit.dart';

import 'package:foodwifi_trial/menu_manager/logic/thumbnail_image/thumbnail_image_cubit.dart';

import 'package:foodwifi_trial/menu_manager/widget_view/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:foodwifi_trial/router/app_router.dart';
import 'package:image_picker/image_picker.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Menu39Page extends StatefulWidget {
  // const Menu39Page({Key key}) : super(key: key);

  @override
  _Menu39PageState createState() => _Menu39PageState();

  //showImageDialogCraousel();
}

class _Menu39PageState extends State<Menu39Page> {
  String? dropDownValue1;
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  bool? switchListTileValue;
  //String dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    // final thumbImageFromCubit = context.watch<Menu39ImagesCubit>();
    // final thumbImageFromState = thumbImageFromCubit.state;
    // final thumbnailFinal = thumbImageFromState.thumbImageC;

    List<File>? imgViewList = [];

    var longitude = MediaQuery.of(context).size.height;
    var latitude = MediaQuery.of(context).size.width;
    return Scaffold(
      // key: scaffoldKey,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colorss.bgColor,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colorss.bgColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.clear,
            color: Colorss.textIconColor,
            size: 30,
          ),
          onPressed: () async {
            context.router.pop();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'Create Item',
              style: TextStyle(color: Colorss.textIconColor, fontSize: 22),
            ),
          ],
        ),
        //actions: [],
        centerTitle: true,
        elevation: 1,
      ),
      backgroundColor: Colorss.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: TextFormField(
                    controller: textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Product Name',
                      //hintText: '[Some hint text...]',
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colorss.border,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colorss.border,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      filled: true,
                      fillColor: Colorss.bgColor,
                    ),
                    //style: TextStyle(color: Colorss.textIconColor, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: TextFormField(
                    controller: textController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Description (Max 150 Characters)*',
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colorss.border,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colorss.border,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      filled: true,
                      fillColor: Colorss.bgColor,
                    ),
                    //style: const TextStyle(fontSize: 16, color: Colorss.textIconColor),
                    maxLines: 3,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: TextFormField(
                    controller: textController3,

                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Time',
                      //hintText: '[Some hint text...]',
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colorss.border,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colorss.border,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      filled: true,
                      fillColor: Colorss.bgColor,
                    ),
                    //style:const TextStyle(fontSize: 16, color: Colorss.textIconColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: TextFormField(
                    controller: textController4,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Cost Price',
                      //hintText: '[Some hint text...]',
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colorss.border,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colorss.border,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      filled: true,
                      fillColor: Colorss.bgColor,
                    ),
                    //style: const TextStyle(fontSize: 16, color: Colorss.textIconColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomBtn(width: 55, height: 30, text: 'None'),
                      CustomVegBtn(width: 75, height: 30),
                      CustomEggBtn(width: 75, height: 30),
                      CustomNonVegBtn(width: 105, height: 30),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: Colorss.bgColor,
                      border: Border.all(color: Colorss.border)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SwitchListTile(
                      value: switchListTileValue ??= true,
                      onChanged: (newValue) =>
                          setState(() => switchListTileValue = newValue),
                      title: const Text(
                        'Halal',
                        //style: TextStyle(fontSize: 16, color: Colorss.textIconColor),
                      ),
                      tileColor: Colorss.bgColor,
                      activeColor: Colorss.primaryRed,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: Colorss.bgColor,
                      border: Border.all(color: Colorss.border)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        hint: const Text('Category'),
                        value: dropDownValue1,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colorss.textIconColor,
                          size: 30,
                        ),
                        //style: const TextStyle(color: Colorss.textIconColor,fontSize: 16),
                        itemHeight: 50,

                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),

                        elevation: 1,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue1 = newValue;
                          });
                        },
                        items: <String>[
                          'Category 1',
                          'Category 2',
                          'Category 3'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                  child: ElevatedButton(
                    onPressed: () =>
                        context.router.push(const SelectSuggestedItemsRoute()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Suggested Items',
                          style: TextStyle(
                            color: Colorss.textIconColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colorss.textIconColor,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width / 1, 60),
                      primary: Colorss.bgColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Variants',
                ),
                const SizedBox(
                  height: 14,
                ),
                const ListViewPanelWidget(
                    tile1Title: 'Half',
                    tile2Title: 'Full',
                    tile1Subtitle: 'Rs.250',
                    tile2Subtitle: 'Rs.250'),
                ElevatedButton(
                  onPressed: () => context.router.push(Menu35Route(
                      appBarTitle: 'Add Variant',
                      textField1: 'Variant Name',
                      textField2: 'Cost Price',
                      buttonLabel: 'ADD')),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.add,
                          size: 16,
                          color: Colorss.textIconColor,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text(
                            'Add Item Variants',
                            style: TextStyle(
                              color: Colorss.textIconColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width / 1, 60),
                    primary: Colorss.box,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Add-Ons',
                  //style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 14,
                ),
                const ListViewPanelWidget(
                    tile1Title: 'Salt',
                    tile2Title: 'Mayo',
                    tile1Subtitle: 'Rs. 0',
                    tile2Subtitle: 'Rs.250'),
                ElevatedButton(
                  onPressed: () => context.router.push(Menu35Route(
                      appBarTitle: 'Add Add-Ons',
                      textField1: 'Add-On Name',
                      textField2: 'Cost Price',
                      buttonLabel: 'ADD')),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.add,
                          size: 16,
                          color: Colorss.textIconColor,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text(
                            'Add Item Add-On',
                            style: TextStyle(
                              color: Colorss.textIconColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width / 1, 60),
                    primary: Colorss.box,
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 34, 0, 0),
                  child: Text(
                    'Thumbnail and Slider Images',
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 26, 0, 2),
                  child: Text("Thumbnail"),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                            child: BlocBuilder<ThumbnailImageCubit,
                                ThumbnailImageState>(
                              builder: (context, state) {
                                return state.thumbImageC != null
                                    ? MyBadgeWidget(
                                        myBadgeContent: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return const DeleteDialog(
                                                    itemToDelete: 'thumbnail',
                                                    //index: 1,
                                                  );
                                                });
                                          },
                                          child: const Icon(
                                            Icons.close,
                                            color: Colorss.bgColor,
                                            size: 16,
                                          ),
                                        ),
                                        childWidget: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: GestureDetector(
                                            onTap: () {
                                              showImageDialogThumb(
                                                  context, state.thumbImageC!);
                                            },
                                            child: Image.file(
                                              state.thumbImageC!,
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      )
                                    : showDottedBoxContainer();
                              },
                            )),
                      ),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Colorss.bgColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Text(
                    'Slider Images',
                    //style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BlocBuilder<SliderImage1Cubit, SliderImage1State>(
                        builder: (context, state) {
                          return SliderImage1Widget(
                            sliderImageType: 'sliderImage1',
                            passedImage: state.slider_image1,
                          );
                        },
                      ),
                      const SliderImage2Widget(
                        sliderImageType: 'sliderImage2',
                      ),
                      const SliderImage3Widget(
                        sliderImageType: 'sliderImage3',
                      ),
                      const SliderImage4Widget(
                        sliderImageType: 'sliderImage4',
                      ),
                      // SliderSingleImage(
                      //   sliderIndex: 3,
                      // ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                  child: Text(
                    'Add Photos',
                    //style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showCupertinoModalBottomSheet(
                        expand: false,
                        context: context,
                        backgroundColor: Colors.black.withOpacity(0),
                        builder: (context) => const BottomSheetWidget(
                              sliderImageType: '',
                            ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.add,
                          size: 16,
                          color: Colorss.textIconColor,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text(
                            'Select Item Thumbnail',
                            style: TextStyle(
                              color: Colorss.textIconColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width / 1, 60),
                    primary: Colorss.box,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () async {
                    //BlocProvider.of<SliderImageCubit>(context)
                    //   .multiImagePicker();

                    List<XFile>? _images = await ImagePicker().pickMultiImage();
                    print('-----------------');

                    if (_images!.length < 4) {
                      print("Select 4 images!");
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'You didn\'t select four images! Select upto 4 images.')));
                    } else {
                      BlocProvider.of<SliderImage1Cubit>(context)
                          .addImageFromMultiImagePicker(_images[0]);

                      BlocProvider.of<SliderImage2Cubit>(context)
                          .addImageFromMultiImagePicker(_images[1]);

                      BlocProvider.of<SliderImage3Cubit>(context)
                          .addImageFromMultiImagePicker(_images[2]);

                      BlocProvider.of<SliderImage4Cubit>(context)
                          .addImageFromMultiImagePicker(_images[3]);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.add,
                          size: 16,
                          color: Colorss.textIconColor,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text(
                            'Select Slider upto 4 Images',
                            style: TextStyle(
                              color: Colorss.textIconColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width / 1, 60),
                    primary: Colorss.box,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 100),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'CREATE',
                      style: TextStyle(color: Colorss.bgColor),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width / 1, 50),
                      primary: Colorss.primaryRed,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

showImageDialogThumb(context, imgView) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              padding: const EdgeInsets.only(bottom: 12),
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(8),
                color: Colorss.bgColor,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      flex: 8,
                      child: Image.file(
                        imgView,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    height: 24,
                  ),
                  const Expanded(flex: 1, child: Text('Thumbnail')),
                ],
              ),
            ),
          ),
        );
      });
}

showDottedBoxContainer() {
  return const DottedBorderContainer(
    width: 100,
    height: 100,
    icon: Icon(
      Icons.add_circle_outline,
      color: Colorss.greyText,
      size: 30,
    ),
    borderColor: Colorss.amberBtnBorder,
    borderRadius: 8.0,
    fillColor: Colorss.border,
    sliderImageType: 'thumbnail',
  );
}

// showImageDialogCarousel(context) {
  

//   print('====ImageDialogCarousel triggered====');
//   return showDialog(
//       context: context,
//       builder: (context) {
//         return Center(
//           child: Material(
//             type: MaterialType.transparency,
//             child: Container(
//               padding: const EdgeInsets.all(16),
//               width: MediaQuery.of(context).size.width * 0.8,
//               height: MediaQuery.of(context).size.height * 0.6,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Colorss.bgColor,
//               ),
             
//                 child: CarouselSlider.builder(
//                     itemCount: imgViewList.length,
//                     //itemCount: imgViewList.length,
//                     itemBuilder: (context, index, realIndex) {
//                       final sliderImage = imgViewList[index];
//                       return Column(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Expanded(
//                             flex: 10,
//                             child: Container(
//                               margin: const EdgeInsets.symmetric(horizontal: 8),
//                               width: double.infinity,
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(8),
//                                 child: Image.file(
//                                   // File(state.multipleImages![widget.sliderIndex].path),
//                                   //sliderImage,
//                                   File(sliderImage.path),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 24,
//                           ),
//                           Expanded(
//                               flex: 1,
//                               child: Text(
//                                   'Slider Image ' + (index + 1).toString())),
//                         ],
//                       );
//                     },
//                     options: CarouselOptions(
//                       viewportFraction: 0.8,
//                       height: 350,
//                       //aspectRatio: 16 / 9,
//                       enlargeCenterPage: true,
//                       enlargeStrategy: CenterPageEnlargeStrategy.height,
//                       enableInfiniteScroll: false,
//                       // initialPage: startImage,
//                     )),
              
//             ),
//           ),
//         );
//       });
// }
