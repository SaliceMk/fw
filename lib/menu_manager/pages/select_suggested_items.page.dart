import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:auto_route/auto_route.dart';

class SelectSuggestedItemsPage extends StatefulWidget {
  const SelectSuggestedItemsPage({Key? key}) : super(key: key);

  @override
  _SelectSuggestedItemsPageState createState() =>
      _SelectSuggestedItemsPageState();
}

class _SelectSuggestedItemsPageState extends State<SelectSuggestedItemsPage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colorss.bgColor,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colorss.bgColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colorss.textIconColor,
            size: 30,
          ),
          onPressed: () async {
            context.router.pop();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'Select Suggested Items',
              style: TextStyle(color: Colorss.textIconColor, fontSize: 22),
            ),
          ],
        ),
        //actions: [],
        centerTitle: true,
        elevation: 1,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, listViewIndex) {
                // final listViewFoodRecord = listViewFoodRecordList[listViewIndex];
                return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 4, 16),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/cake.png',
                                  width: 120,
                                  height: 120,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: CheckboxListTile(
                              title: const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text('Food name'),
                              ),
                              subtitle: const Text(
                                'Food Description. Indian style chicken noodles serve with red chillie sauce.',
                                style: TextStyle(color: Colorss.greyText),
                              ),
                              autofocus: false,
                              activeColor: Colorss.primaryRed,
                              checkColor: Colorss.bgColor,
                              selected: _value,
                              value: _value,
                              onChanged: (bool? value) {
                                setState(() {
                                  _value = value ??= false;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
            child: Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  context.router.pop();
                },
                child: const Text('Done'),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width / 1, 50),
                  primary: Colorss.primaryRed,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
