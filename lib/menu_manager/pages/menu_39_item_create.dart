import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/pages/select_suggested_items.page.dart';
import 'package:foodwifi_trial/menu_manager/widget_view/widgets.dart';

import 'pages.dart';

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

  @override
  Widget build(BuildContext context) {
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
            Navigator.pop(context);
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
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const SelectSuggestedItemsPage(),
                        ),
                      );
                    },
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
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Menu35Page(
                          appBarTitle: 'Add Variant',
                          textField1: 'Variant Name',
                          textField2: 'Cost Price',
                          buttonLabel: 'ADD',
                        ),
                      ),
                    );
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
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Menu35Page(
                          appBarTitle: 'Add Add-Ons',
                          textField1: 'Add-On Name',
                          textField2: 'Cost Price',
                          buttonLabel: 'ADD',
                        ),
                      ),
                    );
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
                    'THUMBNAIL AND SLIDER IMAGES',
                    //style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 26, 0, 2),
                  child: Text(
                    'THUMBNAIL',
                    // style: TextStyle(fontSize: 16),
                  ),
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
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  'https://picsum.photos/seed/0/600',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Image.asset(
                                  'assets/images/close.png',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
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
                    'SLIDER IMAGES',
                    //style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  'https://picsum.photos/seed/167/600',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Image.asset(
                                  'assets/images/close.png',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  'https://picsum.photos/seed/754/600',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Image.asset(
                                  'assets/images/close.png',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  'https://picsum.photos/seed/88/600',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Image.asset(
                                  'assets/images/close.png',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                          child: DottedBorderContainer(
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
                          ),
                        ),
                      ),
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
                  onPressed: () {},
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
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
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
