import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodwifi_trial/colors/colors.dart';

class SelectSuggestedItemsPage extends StatefulWidget {
  const SelectSuggestedItemsPage({ Key? key }) : super(key: key);

  @override
  _SelectSuggestedItemsPageState createState() => _SelectSuggestedItemsPageState();
}

class _SelectSuggestedItemsPageState extends State<SelectSuggestedItemsPage> {
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
        automaticallyImplyLeading: false,
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
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('Select Suggested Items',style: TextStyle(color: Colorss.textIconColor, fontSize: 22),),
              ],
            ),
        //actions: [],
        centerTitle: true,
        elevation: 1,
      ),

      
    );
  }
}