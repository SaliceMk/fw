
import 'package:flutter/material.dart';
import 'package:foodwifi_trial/colors/colors.dart';


class ItemListViewWidget extends StatefulWidget {
  //const ItemListViewWidget({Key key}) : super(key: key);

  @override
  _ItemListViewWidgetState createState() => _ItemListViewWidgetState();
}

class _ItemListViewWidgetState extends State<ItemListViewWidget> {
   bool isSwitched=false;

  @override
  Widget build(BuildContext context) {
    
        return ListView.builder(
         // padding: EdgeInsets.only(top: 8,bottom: 8),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, listViewIndex) {
           // final listViewFoodRecord = listViewFoodRecordList[listViewIndex];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                       Expanded(
                         flex: 1,
                         child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                           overflow: Overflow.visible,
                           children: [ClipRRect(
                             borderRadius: BorderRadius.circular(8),
                             child: Image.asset(
                                           'assets/images/noodle.png',
                                           width: 120,
                                           height: 130,
                                           fit: BoxFit.cover,
                                           
                                         ),
                           ),
                           Positioned(
                             bottom: -12,
                             
                             child: Container(
                               width: 100,
                               child: const Padding(
                                 padding: EdgeInsets.all(8.0),
                                 child: Center(child: Text('55% OFF',style: TextStyle(color: Colorss.bgColor),)),
                                 
                               ),
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colorss.primaryRed ),
                             ),
                           ),
                           ]
                         ),
                       ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16, left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children:  [
                            Row(
                              children: [
                                Image.asset(
                                    'assets/images/nonvegeterian.png',
                                       width: 12,
                                       height: 12,
                                      fit: BoxFit.cover,
                                  ),
                                  
                                const Padding(
                                  padding: EdgeInsets.only(left:4.0),
                                  child: Text('Noodles',),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4,),
                            Row(
                              children: const [
                                Text('Chinese Noodle', ),
                              ],
                            ),
                            const SizedBox(height: 4,),
                            Row(children: const [Expanded(child: Text('Italian style noodle served hot with red chilli paste, green chilli paste, hot chilli, spawn, chicken masala.',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colorss.greyText,fontSize: 12,),maxLines: 2,))],),
                            const SizedBox(height: 4,),
                            Row(children: [Text('Rs.300')],),
                            const SizedBox(height: 8,),
                            Container(height: 1,color: Colorss.border,),
                            //const SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text('Status: '),
                                   Text('Published'),
                                ],
                              ),
                             
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('In Stock', style: TextStyle(fontSize: 12, color: Colorss.greyText),),
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
                            ],),
                          ],
                        ),
                      ),
                    ),
                    
                    ]
                   
                  ),
                ),
              ),
            );
          },
        );
    //  },
   // );
  }
}
