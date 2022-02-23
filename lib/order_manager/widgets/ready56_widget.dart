import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'package:foodwifi_trial/colors/colors.dart';

class Ready56Widget extends StatefulWidget {
  const Ready56Widget({Key? key}) : super(key: key);

  @override
  _Ready56WidgetState createState() => _Ready56WidgetState();
}

class _Ready56WidgetState extends State<Ready56Widget> {
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  color: Colorss.bgColor,
                                  child: ExpandableNotifier(
                                    initialExpanded: false,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 0, 8, 0),
                                            child: Image.asset(
                                              'assets/images/vegeterian.png',
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const Text(
                                            'Paneer Masala Dosa',
                                          ),
                                        ],
                                      ),
                                      collapsed: const Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            32, 0, 0, 0),
                                        child: Text('Full 99 X Mc Spices',
                                            style: TextStyle(
                                                color: Colorss.greyText)),
                                      ),
                                      expanded: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(32, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 4),
                                              child: Text(
                                                'Variant : Full',
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 4),
                                              child: Text(
                                                'Extra Cheese, Grilled Mushrooms',
                                                style: TextStyle(
                                                    color:
                                                        Colorss.amberBtnBorder),
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
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                        expandIcon: Icons.arrow_drop_down,
                                        collapseIcon: Icons.arrow_drop_up,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Text(
                                  'Rs. 359',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://picsum.photos/seed/966/600',
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
                                child: Text(
                                  'Tombung Thiyam',
                                ),
                              ),
                              Text(
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
