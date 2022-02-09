import 'package:flutter/services.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:foodwifi_trial/menu_manager/widget_view/two_textfields.widget.dart';

class Menu35Page extends StatefulWidget {
  Menu35Page(
      {required this.appBarTitle,
      required this.textField1,
      required this.textField2,
      required this.buttonLabel});

  final String appBarTitle;
  final String textField1;
  final String textField2;
  final String buttonLabel;

  @override
  _Menu35PageState createState() => _Menu35PageState();
}

class _Menu35PageState extends State<Menu35Page> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            context.router.pop();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.appBarTitle,
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
          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
          child: TwoTextfieldsWidget(
            tf1Label: widget.textField1,
            tf2Label: widget.textField2,
            btnLabel: widget.buttonLabel,
          ),
        ),
      ),
    );
  }
}
