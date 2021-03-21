import 'package:animate_do/animate_do.dart';
import 'package:darub/src/DrawerPage.dart';
import 'package:darub/src/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class ExperiencePage extends StatelessWidget {
  static const String id = 'Experience';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Axis direction = size.width > 600 ? Axis.horizontal : Axis.vertical;
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          drawer: DrawerPage(),
          appBar: appBarCustom(["Experience"], 24.0, 1),
          body: ListView(
            scrollDirection: direction,
            children: [
              FadeInRight(
                child: FixedTimeline.tileBuilder(
                  direction: direction,
                  builder: TimelineTileBuilder.connectedFromStyle(
                    contentsAlign: ContentsAlign.alternating,
                    oppositeContentsBuilder: (context, index) => Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('2021'),
                    ),
                    contentsBuilder: (context, index) => Container(
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(50.0),
                          child: Text('Contents'),
                        ),
                      ),
                    ),
                    connectorStyleBuilder: (context, index) =>
                        ConnectorStyle.dashedLine,
                    indicatorStyleBuilder: (context, index) =>
                        IndicatorStyle.dot,
                    firstConnectorStyle: ConnectorStyle.transparent,
                    lastConnectorStyle: ConnectorStyle.solidLine,
                    itemCount: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
