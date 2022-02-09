import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodwifi_trial/colors/colors.dart';
import 'package:auto_route/auto_route.dart';

class Menu30Page extends StatefulWidget {
  //const Menu30Page({Key key}) : super(key: key);

  @override
  _Menu30PageState createState() => _Menu30PageState();
}

class _Menu30PageState extends State<Menu30Page> {
  String? dropDownValue;
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
            Icons.clear,
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
              'Create Collection',
              style: TextStyle(color: Colorss.textIconColor, fontSize: 22),
            ),
          ],
        ),
        //actions: [],
        centerTitle: true,
        elevation: 1,
      ),
      backgroundColor: Colorss.bgColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFormField(
                  controller: textController,
                  obscureText: false,
                  decoration: const InputDecoration(
                    hintText: 'Collection Name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colorss.border,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colorss.border,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Text(
                        'Layout Preview',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      'assets/images/ListViewLayout.png',
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  'List View',
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colorss.bgColor,
                        border: Border.all(color: Colorss.border)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: const Text('Layout Type'),
                          value: dropDownValue,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colorss.textIconColor,
                            size: 30,
                          ),
                          //style: const TextStyle(color: Colorss.textIconColor,fontSize: 16),
                          itemHeight: 50,

                          borderRadius:
                              const BorderRadius.all(Radius.circular(4)),

                          elevation: 1,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropDownValue = newValue;
                            });
                          },
                          items: <String>['Carousel', 'Grid View', 'List View']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'CREATE',
                    style: TextStyle(color: Colorss.bgColor),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width / 1, 50),
                    primary: Colorss.primaryRed,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
