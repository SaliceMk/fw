import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:foodwifi_trial/colors/colors.dart';

class OrdersOfAPersonId extends StatelessWidget {
  const OrdersOfAPersonId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 12,
          child: Container(
            width: double.infinity,
            color: Colorss.bgColor,
            child: ExpandableNotifier(
              initialExpanded: false,
              child: ExpandablePanel(
                header: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                      child: Image.asset(
                        'assets/images/vegeterian.png',
                        width: 16,
                        height: 16,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      'Paneer Masala Dosa',
                    ),
                  ],
                ),
                collapsed: const SizedBox(),
                expanded: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                        child: Text(
                          'Variant : Full',
                          style: TextStyle(color: Colorss.greyText),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                        child: Text(
                          'Extra Cheese, Grilled Mushrooms',
                          style: TextStyle(color: Colorss.amberBtnBorder),
                        ),
                      ),
                      Text(
                        'Notes: Add extra Sponge and napkins',
                        style: TextStyle(color: Colorss.primaryRed),
                      ),
                    ],
                  ),
                ),
                theme: const ExpandableThemeData(
                  tapHeaderToExpand: true,
                  tapBodyToExpand: false,
                  tapBodyToCollapse: false,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  hasIcon: true,
                  expandIcon: Icons.arrow_drop_down,
                  collapseIcon: Icons.arrow_drop_up,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'X  ',
                      style: TextStyle(fontSize: 10, color: Colorss.greyText),
                    ),
                    Text(
                      '9',
                      style: TextStyle(color: Colorss.greyText),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text('Rs. 450')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
