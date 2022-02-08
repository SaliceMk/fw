import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/widget_view/item_listview.widget.dart';

class Menu36OneCategoryTypeListingPage extends StatefulWidget {
  const Menu36OneCategoryTypeListingPage({Key? key}) : super(key: key);

  @override
  _Menu36OneCategoryTypeListingPageState createState() =>
      _Menu36OneCategoryTypeListingPageState();
}

class _Menu36OneCategoryTypeListingPageState
    extends State<Menu36OneCategoryTypeListingPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colorss.bgColor,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colorss.bgColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colorss.textIconColor,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'In Stock',
                style: TextStyle(color: Colorss.greyText),
              ),
              const Text(
                ' (30)',
                style: TextStyle(color: Colorss.greyText),
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    //print(isSwitched);
                  });
                },
                activeTrackColor: Colorss.switchTrack,
                activeColor: Colorss.primaryRed,
              ),
            ],
          ),
          const Icon(
            Icons.more_vert,
            color: Colorss.textIconColor,
          )
        ],
        elevation: 1,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 42, bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        'Noodles',
                        style: TextStyle(
                            color: Colorss.textIconColor, fontSize: 22),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Chinese and Indian Food.',
                      style: TextStyle(color: Colorss.greyText, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ItemListViewWidget(),
    );
  }
}
