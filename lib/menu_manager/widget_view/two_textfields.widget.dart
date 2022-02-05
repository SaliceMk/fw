
import 'package:flutter/material.dart';
import 'package:foodwifi_trial/colors/colors.dart';


class TwoTextfieldsWidget extends StatefulWidget {
   TwoTextfieldsWidget({
   // Key key,
   required this.tf1Label,
   required this.tf2Label,
   required this.btnLabel,
  });

  final String tf1Label;
  final String tf2Label;
  final String btnLabel;

  @override
  _TwoTextfieldsWidgetState createState() => _TwoTextfieldsWidgetState();
}

class _TwoTextfieldsWidgetState extends State<TwoTextfieldsWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          TextFormField(
            
            controller: textController1,
            obscureText: false,
            decoration: InputDecoration(
              //hintText: '[Some hint text...]',
              //hintStyle: const TextStyle(color: Colorss.greyText),
              label: Text(widget.tf1Label),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colorss.border,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colorss.border,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
            ),
           // style: const TextStyle(color: Colorss.g),
          ),
         const SizedBox(height: 16,),
          TextFormField(
            controller: textController2,
            obscureText: false,
            decoration:  InputDecoration(
              //hintText: '[Some hint text...]',
              //hintStyle: const TextStyle(color: Colorss.greyText),
              label: Text(widget.tf2Label),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colorss.border,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colorss.border,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
            ),
           // style: const TextStyle(color: Colorss.greyText),
          ),
          const SizedBox(height: 16,),
          ElevatedButton(onPressed: (){}, child: Text(widget.btnLabel),
          style: ElevatedButton.styleFrom(fixedSize:  Size(MediaQuery.of(context).size.width/1, 50),
          primary: Colorss.primaryRed,
          ),),
        ],
      ),
    );
  }
}
