import 'package:flutter/material.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:foodwifi_trial/router/menu_router/app_router.dart';

class CollectionListViewWidget extends StatefulWidget {
  //const CollectionListViewWidget({Key key}) : super(key: key);

  @override
  _CollectionListViewWidgetState createState() =>
      _CollectionListViewWidgetState();
}

class _CollectionListViewWidgetState extends State<CollectionListViewWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, listViewIndex) {
        // final listViewFoodRecord = listViewFoodRecordList[listViewIndex];
        return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: InkWell(
                onTap: () => context.router
                    .push(const Menu31OneCollectionTypeListingRoute()),
                // onTap: () async{
                //   await Navigator.push(context,
                //   MaterialPageRoute(builder: (context)=> const Menu31OneCollectionTypeListingPage()));
                // },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Sambal Balacan Chilli',
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Type : ',
                                  style: TextStyle(color: Colorss.greyText),
                                ),
                                Text(
                                  'List View',
                                  style:
                                      TextStyle(color: Colorss.amberBtnBorder),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Colorss.switchTrack,
                          activeColor: Colorss.primaryRed,
                        ),
                      ]),
                ),
              ),
            ));
      },
    );
    //  },
    // );
  }
}
