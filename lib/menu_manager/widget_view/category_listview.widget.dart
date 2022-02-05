
import 'package:flutter/material.dart';
import 'package:foodwifi_trial/colors/colors.dart';


class CategoryListViewWidget extends StatefulWidget {
  //const CategoryListViewWidget({Key key}) : super(key: key);

  @override
  _CategoryListViewWidgetState createState() => _CategoryListViewWidgetState();
}

class _CategoryListViewWidgetState extends State<CategoryListViewWidget> {
   bool? switchListTileValue;

  @override
  Widget build(BuildContext context) {
    // return StreamBuilder<List<FoodRecord>>(
    //   stream: queryFoodRecord(),
    //   builder: (context, snapshot) {
    //     // Customize what your widget looks like when it's loading.
    //     if (!snapshot.hasData) {
    //       return Center(
    //         child: SizedBox(
    //           width: 50,
    //           height: 50,
    //           child: CircularProgressIndicator(
    //             color: FlutterFlowTheme.primaryColor,
    //           ),
    //         ),
    //       );
    //     }
    //     List<FoodRecord> listViewFoodRecordList = snapshot.data;
        return ListView.builder(
          padding: EdgeInsets.only(top: 8),
          scrollDirection: Axis.vertical,
          itemCount: 7,
          itemBuilder: (context, listViewIndex) {
           // final listViewFoodRecord = listViewFoodRecordList[listViewIndex];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: 
              SwitchListTile(
                value: switchListTileValue ??= true,
                onChanged: (newValue) =>
                    setState(() => switchListTileValue = newValue),
                title: const Text('Noodles'),
                subtitle: Text('Chinese and Indian food Chinese and Indian food Chinese and Indian food C'),
                //RichText( text: TextSpan(text: 'Chinese and Indian food Chinese and Indian food Chinese and Indian food Chinese and Indian food Chinese and Indian food'),overflow: TextOverflow.ellipsis,),
                //  listViewFoodRecord.foodDescrip.maybeHandleOverflow(
                  //  maxChars: 30,
                  //  replacement: '…',
                 // ),
                 
                
                tileColor: Colorss.bgColor,
                activeColor: Colorss.primaryRed,
                dense: true,
                controlAffinity: ListTileControlAffinity.trailing,
               ),
            );
          },
        );
    //  },
   // );
  }
}
