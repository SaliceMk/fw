
import 'package:flutter/material.dart';
import 'package:foodwifi_trial/colors/colors.dart';


class ListViewPanelWidget extends StatefulWidget {
  const ListViewPanelWidget({
    //Key key,
    required this.tile1Title,
    required this.tile2Title,
    required this.tile1Subtitle,
    required this.tile2Subtitle,
  }) ;

  final String tile1Title;
  final String tile2Title;
  final String tile1Subtitle;
  final String tile2Subtitle;

  @override
  _ListViewPanelWidgetState createState() => _ListViewPanelWidgetState();
}

class _ListViewPanelWidgetState extends State<ListViewPanelWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Colorss.bgColor,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            widget.tile1Title,
                            
                          ),
                        ),
                        Text(
                          widget.tile1Subtitle,
                          style: const TextStyle(color: Colorss.greyText),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                    child: Icon(
                      Icons.close,
                      color: Colorss.primaryRed,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Colorss.bgColor,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            widget.tile2Title,
                            //style: FlutterFlowTheme.subtitle1,
                          ),
                        ),
                        Text(
                          widget.tile2Subtitle,
                          style: TextStyle(color: Colorss.greyText),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                    child: Icon(
                      Icons.close,
                      color: Colorss.primaryRed,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
