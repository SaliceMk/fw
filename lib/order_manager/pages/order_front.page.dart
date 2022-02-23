import 'package:flutter/material.dart';
import 'package:foodwifi_trial/order_manager/widgets/widgets.dart';
import '../../colors/colors.dart';

class OrderFrontPage extends StatefulWidget {
  const OrderFrontPage({Key? key}) : super(key: key);

  @override
  _OrderFrontPageState createState() => _OrderFrontPageState();
}

class _OrderFrontPageState extends State<OrderFrontPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colorss.bgColor,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text(
                'Orders',
                style: TextStyle(fontSize: 22, color: Colorss.textIconColor),
              ),
            ],
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 1,
      ),
      backgroundColor: Colorss.bgColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: DefaultTabController(
            length: 5,
            initialIndex: 0,
            child: Column(
              children: const [
                TabBar(
                  isScrollable: true,
                  labelColor: Colorss.primaryRed,
                  unselectedLabelColor: Colorss.greyText,
                  indicatorColor: Colorss.primaryRed,
                  tabs: [
                    Tab(
                      text: 'PENDING',
                    ),
                    Tab(
                      text: 'PREPARING',
                    ),
                    Tab(
                      text: 'READY',
                    ),
                    Tab(
                      text: 'COMPLETED',
                    ),
                    Tab(
                      text: 'SCHEDULE',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Text(
                        'Tab View 1',
                      ),
                      Preparing54Widget(),
                      Ready56Widget(),
                      Text(
                        'Tab View 4',
                      ),
                      Text(
                        'Tab View 5',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
