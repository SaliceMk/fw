import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'package:foodwifi_trial/colors/colors.dart';

class Ready56Widget extends StatefulWidget {
  const Ready56Widget({Key? key}) : super(key: key);

  @override
  _Ready56WidgetState createState() => _Ready56WidgetState();
}

class _Ready56WidgetState extends State<Ready56Widget> {
  String deliveryPersonImageLink =
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colorss.bgColor,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'ID : 2736428',
                        ),
                        Text(
                          '9.54 AM',
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Text('Order by Babumohon Laishram',
                              style: TextStyle(color: Colorss.greyText)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ExpandableNotifier(
                                initialExpanded: false,
                                child: ExpandablePanel(
                                  header: const Text(
                                    'Paneer Masala Dosa',
                                  ),
                                  // collapsed: const Text('Full 99 X Mc Spices',
                                  //     style:
                                  //         TextStyle(color: Colorss.greyText)),
                                  collapsed: SizedBox(),
                                  expanded: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 4),
                                          child: Text(
                                            'Variant : Full',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 4),
                                          child: Text(
                                            'Extra Cheese, Grilled Mushrooms',
                                            style: TextStyle(
                                                color: Colorss.amberBtnBorder),
                                          ),
                                        ),
                                        Text(
                                          'Notes: Add extra Sponge and napkins',
                                          style: TextStyle(
                                              color: Colorss.primaryRed),
                                        ),
                                      ],
                                    ),
                                  ),
                                  theme: const ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: Icons.arrow_drop_down,
                                    collapseIcon: Icons.arrow_drop_up,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: const Text("Rs. 350"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Sub Total',
                          style: TextStyle(color: Colorss.greyText),
                        ),
                        Text(
                          'Rs. 789',
                          style: TextStyle(color: Colorss.greyText),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('GST',
                              style: TextStyle(color: Colorss.greyText)),
                          Text('Rs. 60',
                              style: TextStyle(color: Colorss.greyText)),
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Text('Notes: Add Extra sponse and Napkins',
                              style: TextStyle(color: Colorss.amberBtnBorder)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                            child: Text('Total Bill:',
                                style: TextStyle(color: Colorss.greyText)),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                            child: Text(
                              'Rs. 849',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                            child: Text('Type:',
                                style: TextStyle(color: Colorss.greyText)),
                          ),
                          Text(
                            'Take Away',
                            style: TextStyle(color: Colorss.amberBtnBorder),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: GestureDetector(
                                onTap: deliveryPersonImageLink != ''
                                    ? () {
                                        showImageDialog(
                                            context, deliveryPersonImageLink);
                                      }
                                    : () {},
                                child: Image.network(
                                  deliveryPersonImageLink,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'Tombung Thiyam',
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              'picked up the item',
                              style: TextStyle(color: Colorss.green),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.settings_phone,
                          color: Colorss.primaryRed,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

showImageDialog(context, imgView) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              // padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(8),
                color: Colorss.bgColor,
              ),
              child: Expanded(
                  flex: 8,
                  child: Image.network(
                    imgView,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        );
      });
}
