import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/widget_view/item_listview.widget.dart';

class Menu31OneCollectionTypeListingPage extends StatefulWidget {
  const Menu31OneCollectionTypeListingPage({ Key? key }) : super(key: key);

  @override
  _Menu31OneCollectionTypeListingPageState createState() => _Menu31OneCollectionTypeListingPageState();
}

class _Menu31OneCollectionTypeListingPageState extends State<Menu31OneCollectionTypeListingPage> {
  bool isSwitched=false;
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
        leading:  IconButton(
             
              icon: const Icon(
                Icons.arrow_back,
                color: Colorss.textIconColor,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
        actions:  [
          Row(mainAxisSize: MainAxisSize.min,
            children:  [
              const Text('Active',style: TextStyle(color: Colorss.greyText),),
              
              Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched=value;
                                });
                            },
                            activeTrackColor: Colorss.switchTrack,
                            activeColor: Colorss.primaryRed ,
                          ),
            ],
          ),
          
          

                          const Icon(Icons.more_vert, color: Colorss.textIconColor,)
        ],
        elevation: 1,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 42, bottom: 16),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Text('Sambal Balacan Chilli',style: TextStyle(color: Colorss.textIconColor, fontSize: 22),),
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