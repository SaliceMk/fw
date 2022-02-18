import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:foodwifi_trial/colors/colors.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image/slider_image_cubit.dart';

import 'package:foodwifi_trial/menu_manager/logic/thumbnail_image/thumbnail_image_cubit.dart';

import 'package:foodwifi_trial/menu_manager/widget_view/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:foodwifi_trial/router/app_router.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Menu39Page extends StatefulWidget {
  // const Menu39Page({Key key}) : super(key: key);

  @override
  _Menu39PageState createState() => _Menu39PageState();
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

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  String thumbImage =
      'https://images.unsplash.com/photo-1588195538326-c5b1e9f80a1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80';
  String sliderImage1 =
      'https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';

  String sliderImage2 =
      'https://images.unsplash.com/photo-1511920170033-f8396924c348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60';
  String sliderImage3 =
      'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80';
  String sliderImage4 =
      'https://images.unsplash.com/photo-1517244683847-7456b63c5969?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80';

  List<String> thumbImageList = [
    'https://images.unsplash.com/photo-1588195538326-c5b1e9f80a1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    // final thumbImageFromCubit = context.watch<Menu39ImagesCubit>();
    // final thumbImageFromState = thumbImageFromCubit.state;
    // final thumbnailFinal = thumbImageFromState.thumbImageC;

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
                    child: BlocListener<SliderImageCubit, SliderImageState>(
                      listener: (context, state) {
                        // TODO: implement listener
                        if (state.imageSelectionStatus ==
                            ImageSelectionStatus.fail) {
                          Scaffold.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Failed to select right number of slider images!*'),
                              duration: Duration(seconds: 3),
                            ),
                          );
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          SliderImage1234Widget(
                            sliderImageType: 'sliderImage1',
                          ),
                          SliderSingleImage(
                            sliderIndex: 1,
                          ),
                          SliderSingleImage(
                            sliderIndex: 2,
                          ),
                          SliderSingleImage(
                            sliderIndex: 3,
                          ),
                        ],
                      ),
                    )),
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
                    BlocProvider.of<SliderImageCubit>(context)
                        .multiImagePicker();
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
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colorss.bgColor,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      flex: 8,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            imgView,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ))),
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
