import 'package:flutter/services.dart';
import 'package:foodwifi_trial/colors/colors.dart';


import 'package:flutter/material.dart';
import 'package:foodwifi_trial/menu_manager/widget_view/category_listview.widget.dart';
import 'package:foodwifi_trial/menu_manager/widget_view/item_listview.widget.dart';

import 'package:foodwifi_trial/menu_manager/widget_view/menu_empty_category_list.widget.dart';
import 'package:foodwifi_trial/menu_manager/widget_view/widgets.dart';
import 'pages.dart';

class FfMenuEmptyPage extends StatefulWidget {
 // const FfMenuEmptyPage({required Key key}) : super(key: key);

  @override
  FfMenuEmptyPageState createState() => FfMenuEmptyPageState();
}

class FfMenuEmptyPageState extends State<FfMenuEmptyPage> with SingleTickerProviderStateMixin {


 // final scaffoldKey = GlobalKey<ScaffoldState>();

 bool categoryEmptyState=false;
 bool itemEmptyState=false;
 bool collectionEmptyState=false;
 bool outofStockState=false;

 late TabController _tabController;
  var indexTab=0;
  static const List<Tab> myTabs=<Tab>[
   Tab(text: 'CATEGORY',),
   Tab(text: 'ITEMS',),
   Tab(text: 'OUT OF STOCK',),
   Tab(text: 'COLLECTION',),
  ];

  @override
  
  void initState() {
    super.initState();
    _tabController=TabController( vsync: this, length: 4,);

    _tabController.addListener(() {
      setState(() {
        indexTab=_tabController.index;
      });
      print("Selected index"+_tabController.index.toString());
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
          'Menu Manager',
          style: TextStyle(fontSize: 22,color: Colorss.textIconColor),
        ),
        actions: [
          IconButton(
            
            icon: const Icon(
              Icons.notification_important,
              color: Colorss.textIconColor,
              size: 30,
            ),
            onPressed: () {
             // print('IconButton pressed ...');
            },
          ),
          IconButton(
            
            icon: const Icon(
              Icons.search_sharp,
              color: Colorss.textIconColor,
              size: 30,
            ),
            onPressed: () {
             // print('IconButton pressed ...');
            },
          ),
        ],

        bottom:  PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Column(
            children: [
              const Divider(height: 4, color: Colorss.border,),
              TabBar(
                              controller: _tabController,
                              // onTap: (index){
                              //   setState(() {
                              //     indexTab=index;
                              //   });
                              // },
                              isScrollable: true,
                              labelColor:Colorss.primaryRed,
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
      floatingActionButton:(indexTab==0)? FloatingActionButton.extended(
        label: const Text('Category'),
        icon: const Icon(Icons.add),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Menu35(appBarTitle: 'Create Category',textField1: 'Category Name', textField2: 'Description',buttonLabel: 'CREATE',),
            ),
          );
        },
        backgroundColor: Colorss.primaryRed,
        
        elevation: 8,
        
      ): (indexTab==1)? FloatingActionButton.extended(label: const Text('Item'),icon: const Icon(Icons.add),
      onPressed:() async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Menu39Page(),
            ),
          );
        }, 
      backgroundColor: Colorss.primaryRed,): (indexTab==3)? 
     
      FloatingActionButton.extended(onPressed: ()async{
          await Navigator.push(context,
          MaterialPageRoute(builder: (context)=>Menu30Page())
          );
      }, 
      
      backgroundColor: Colorss.primaryRed, label: const Text('Collection'),icon:const Icon(Icons.add)):null
      ,
       body: TabBarView(
                          controller: _tabController,
                          children:  [
                          (categoryEmptyState==false)?CategoryListViewWidget() :const MenuEmptyCategorylistWidget(text1: 'You have no category.',),
                          (itemEmptyState==false)?ItemListViewWidget():const MenuEmptyCategorylistWidget(text1: 'You have no items.'),
                          (outofStockState==false)? OutofstockListviewWidget(): const MenuEmptyCategorylistWidget(text1: 'You\'re out of stock.'),
                          (collectionEmptyState==false)? CollectionListViewWidget(): const MenuEmptyCategorylistWidget(text1: 'You have no collections yet.'),
                          
                          
                         

                          ],
                        ),
       
      
    );
  }
}


