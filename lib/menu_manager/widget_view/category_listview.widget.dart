
import 'package:flutter/material.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:foodwifi_trial/menu_manager/pages/pages.dart';


class CategoryListViewWidget extends StatefulWidget {
  //const CategoryListViewWidget({Key key}) : super(key: key);

  @override
  _CategoryListViewWidgetState createState() => _CategoryListViewWidgetState();
}

class _CategoryListViewWidgetState extends State<CategoryListViewWidget> {
   bool isSwitched=false;

  @override
  Widget build(BuildContext context) {
    
        return ListView.builder(
          padding: EdgeInsets.only(top: 8,bottom: 8),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, listViewIndex) {
           // final listViewFoodRecord = listViewFoodRecordList[listViewIndex];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: 
              
              Card(
                child: InkWell(
                  onTap: () async{
                    await Navigator.push(context, MaterialPageRoute(builder: (context)=> Menu36OneCategoryTypeListing()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Noodles',),
                          SizedBox(height: 8,),
                          Text('Chinese and Indian food', style: TextStyle( color: Colorss.greyText),),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('In Stock', style: TextStyle(color: Colorss.greyText),),
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched=value;
                                print(isSwitched);
                              });
                            },
                            activeTrackColor: Colorss.switchTrack,
                            activeColor: Colorss.primaryRed ,
                          ),
                        ],
                      ),
                      ]
                     
                    ),
                  ),
                ),
              )
               
            );
          },
        );
    //  },
   // );
  }
}
