import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodwifi_trial/menu_manager/widget_view/widgets.dart';
import 'package:foodwifi_trial/order_manager/widgets/widgets.dart';
import '../../colors/colors.dart';
import 'package:auto_route/auto_route.dart';

class OrderFrontPage extends StatefulWidget {
  const OrderFrontPage({Key? key}) : super(key: key);

  @override
  _OrderFrontPageState createState() => _OrderFrontPageState();
}

class _OrderFrontPageState extends State<OrderFrontPage>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // bool pendingEmptyState = true;
  bool preparingEmptyState = false;
  bool readyEmptyState = false;
  // bool completedEmptyState = true;
  // bool scheduleEmptyState = true;

  late TabController _tabController;
  var indexTab = 0;
  static const List<Tab> myTabs = <Tab>[
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
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 5,
    );

    _tabController.addListener(() {
      setState(() {
        indexTab = _tabController.index;
      });
      print("Selected index" + _tabController.index.toString());
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colorss.appBarColor,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colorss.appBarColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'Orders',
          style: TextStyle(fontSize: 22, color: Colorss.textIconColor),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Column(
            children: [
              const Divider(
                height: 4,
                color: Colorss.border,
              ),
              TabBar(
                controller: _tabController,
                isScrollable: true,
                labelColor: Colorss.primaryRed,
                unselectedLabelColor: Colorss.greyText,
                indicatorColor: Colorss.primaryRed,
                tabs: myTabs,
              ),
            ],
          ),
        ),
        centerTitle: false,
        elevation: 1,
      ),
      backgroundColor: Colorss.bgColor,

      body: TabBarView(
        controller: _tabController,
        children: [
          const MenuEmptyCategorylistWidget(
            text1: "No pending orders!",
          ),

          (preparingEmptyState == false)
              ? const Preparing54Widget()
              : const MenuEmptyCategorylistWidget(
                  text1: "No food is in preparation!",
                ),

          (readyEmptyState == false)
              ? const Ready56Widget()
              : const MenuEmptyCategorylistWidget(
                  text1: "No order is ready!",
                ),

          const MenuEmptyCategorylistWidget(
            text1: "No completed order yet for today!",
          ),
          const MenuEmptyCategorylistWidget(
            text1: "No cancelled order yet for today!",
          ),
          // (categoryEmptyState == false)
          //     ? CategoryListViewWidget()
          //     : const MenuEmptyCategorylistWidget(
          //         text1: 'You have no category.',
          //       ),
          // (itemEmptyState == false)
          //     ? ItemListViewWidget()
          //     : const MenuEmptyCategorylistWidget(text1: 'You have no items.'),
          // (outofStockState == false)
          //     ? ItemListViewWidget()
          //     : const MenuEmptyCategorylistWidget(
          //         text1: 'You\'re out of stock.'),
          // (collectionEmptyState == false)
          //     ? CollectionListViewWidget()
          //     : const MenuEmptyCategorylistWidget(
          //         text1: 'You have no collections yet.'),
        ],
      ),
    );
  }

  // static const List<Tab> myTabs = <Tab>[
  //   Tab(
  //     text: 'PENDING',
  //   ),
  //   Tab(
  //     text: 'PREPARING',
  //   ),
  //   Tab(
  //     text: 'READY',
  //   ),
  //   Tab(
  //     text: 'COMPLETED',
  //   ),
  //   Tab(
  //     text: 'SCHEDULE',
  //   ),
  // ];

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     key: scaffoldKey,
  //     appBar: AppBar(
  //       systemOverlayStyle: const SystemUiOverlayStyle(
  //         statusBarColor: Colorss.bgColor,
  //         statusBarIconBrightness: Brightness.dark,
  //         statusBarBrightness: Brightness.light,
  //       ),
  //       backgroundColor: Colorss.bgColor,
  //       automaticallyImplyLeading: false,

  //       title: Row(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         children: const [
  //           Text(
  //             'Orders',
  //             style: TextStyle(color: Colorss.textIconColor, fontSize: 22),
  //           ),
  //         ],
  //       ),
  //       //actions: [],
  //       centerTitle: true,
  //       elevation: 1,
  //       bottom: PreferredSize(
  //         preferredSize: Size.fromHeight(40.0),
  //         child: Column(
  //           children: [
  //             const Divider(
  //               height: 4,
  //               color: Colorss.border,
  //             ),
  //             TabBar(
  //               controller: _tabController,
  //               // onTap: (index){
  //               //   setState(() {
  //               //     indexTab=index;
  //               //   });
  //               // },
  //               isScrollable: true,
  //               labelColor: Colorss.primaryRed,
  //               unselectedLabelColor: Colorss.greyText,
  //               indicatorColor: Colorss.primaryRed,
  //               tabs: myTabs,
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //     backgroundColor: Colorss.bgColor,
  //     body: SafeArea(
  //       child:
  //               Expanded(
  //                 child: TabBarView(
  //                   children: [
  //                     Text(
  //                       'Tab View 1',
  //                     ),
  //                     Preparing54Widget(),
  //                     Ready56Widget(),
  //                     Text(
  //                       'Tab View 4',
  //                     ),
  //                     Text(
  //                       'Tab View 5',
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],

  //         ),

  //     ),
  //   );
  // }
}


// import 'package:flutter/services.dart';
// import 'package:foodwifi_trial/colors/colors.dart';

// import 'package:flutter/material.dart';
// import 'package:auto_route/auto_route.dart';

// import 'package:foodwifi_trial/menu_manager/widget_view/menu_empty_category_list.widget.dart';
// import 'package:foodwifi_trial/menu_manager/widget_view/widgets.dart';
// import 'package:foodwifi_trial/router/app_router.dart';
// import 'pages.dart';

// class OrderFrontPage extends StatefulWidget {
//   // const OrderFrontPage({required Key key}) : super(key: key);

//   @override
//   OrderFrontPageState createState() => OrderFrontPageState();
// }

// class OrderFrontPageState extends State<OrderFrontPage>
//     with SingleTickerProviderStateMixin {
//   // final scaffoldKey = GlobalKey<ScaffoldState>();

//   bool categoryEmptyState = false;
//   bool itemEmptyState = false;
//   bool collectionEmptyState = false;
//   bool outofStockState = false;

//   late TabController _tabController;
//   var indexTab = 0;
//   static const List<Tab> myTabs = <Tab>[
//     Tab(
//       text: 'CATEGORY',
//     ),
//     Tab(
//       text: 'ITEMS',
//     ),
//     Tab(
//       text: 'OUT OF STOCK',
//     ),
//     Tab(
//       text: 'COLLECTION',
//     ),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(
//       vsync: this,
//       length: 4,
//     );

//     _tabController.addListener(() {
//       setState(() {
//         indexTab = _tabController.index;
//       });
//       print("Selected index" + _tabController.index.toString());
//     });
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // key: scaffoldKey,
//       appBar: AppBar(
//         systemOverlayStyle: const SystemUiOverlayStyle(
//           statusBarColor: Colorss.appBarColor,
//           statusBarIconBrightness: Brightness.dark,
//           statusBarBrightness: Brightness.light,
//         ),
//         backgroundColor: Colorss.appBarColor,
//         automaticallyImplyLeading: false,
//         title: const Text(
//           'Menu Manager',
//           style: TextStyle(fontSize: 22, color: Colorss.textIconColor),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(
//               Icons.notification_important,
//               color: Colorss.textIconColor,
//               size: 30,
//             ),
//             onPressed: () {
//               // print('IconButton pressed ...');
//             },
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.search_sharp,
//               color: Colorss.textIconColor,
//               size: 30,
//             ),
//             onPressed: () {
//               // print('IconButton pressed ...');
//             },
//           ),
//         ],
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(40.0),
//           child: Column(
//             children: [
//               const Divider(
//                 height: 4,
//                 color: Colorss.border,
//               ),
//               TabBar(
//                 controller: _tabController,
//                 // onTap: (index){
//                 //   setState(() {
//                 //     indexTab=index;
//                 //   });
//                 // },
//                 isScrollable: true,
//                 labelColor: Colorss.primaryRed,
//                 unselectedLabelColor: Colorss.greyText,
//                 indicatorColor: Colorss.primaryRed,
//                 tabs: myTabs,
//               ),
//             ],
//           ),
//         ),
//         centerTitle: false,
//         elevation: 1,
//       ),
//       backgroundColor: Colorss.bgColor,
//       floatingActionButton: (indexTab == 0)
//           ? FloatingActionButton.extended(
//               label: const Text('Category'),
//               icon: const Icon(Icons.add),
//               onPressed: () {
//                 context.router.push(Menu35Route(
//                     appBarTitle: 'Create Category',
//                     textField1: 'Category Name',
//                     textField2: 'Description',
//                     buttonLabel: 'CREATE'));
//               },
//               // onPressed: () async {
//               //   await Navigator.push(
//               //     context,
//               //     MaterialPageRoute(
//               //       builder: (context) => Menu35Page(
//               //         appBarTitle: 'Create Category',
//               //         textField1: 'Category Name',
//               //         textField2: 'Description',
//               //         buttonLabel: 'CREATE',
//               //       ),
//               //     ),
//               //   );
//               // },
//               backgroundColor: Colorss.primaryRed,
//               elevation: 8,
//             )
//           : (indexTab == 1)
//               ? FloatingActionButton.extended(
//                   label: const Text('Item'),
//                   icon: const Icon(Icons.add),
//                   onPressed: () {
//                     context.router.push(const Menu39Route());
//                   },
//                   // onPressed: () async {
//                   //   await Navigator.push(
//                   //     context,
//                   //     MaterialPageRoute(
//                   //       builder: (context) => Menu39Page(),
//                   //     ),
//                   //   );
//                   // },
//                   backgroundColor: Colorss.primaryRed,
//                 )
//               : (indexTab == 3)
//                   ? FloatingActionButton.extended(
//                       onPressed: () {
//                         context.router.push(const Menu30Route());
//                       },
//                       // onPressed: () async {
//                       //   await Navigator.push(
//                       //       context,
//                       //       MaterialPageRoute(
//                       //           builder: (context) => Menu30Page()));
//                       // },
//                       backgroundColor: Colorss.primaryRed,
//                       label: const Text('Collection'),
//                       icon: const Icon(Icons.add))
//                   : null,
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           (categoryEmptyState == false)
//               ? CategoryListViewWidget()
//               : const MenuEmptyCategorylistWidget(
//                   text1: 'You have no category.',
//                 ),
//           (itemEmptyState == false)
//               ? ItemListViewWidget()
//               : const MenuEmptyCategorylistWidget(text1: 'You have no items.'),
//           (outofStockState == false)
//               ? ItemListViewWidget()
//               : const MenuEmptyCategorylistWidget(
//                   text1: 'You\'re out of stock.'),
//           (collectionEmptyState == false)
//               ? CollectionListViewWidget()
//               : const MenuEmptyCategorylistWidget(
//                   text1: 'You have no collections yet.'),
//         ],
//       ),
//     );
//   }
// }
