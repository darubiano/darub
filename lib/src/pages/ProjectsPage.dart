import 'package:darub/src/DrawerPage.dart';
import 'package:darub/src/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/accordian/gf_accordian.dart';

class ProjectsPage extends StatelessWidget {
  static const String id = 'Projects';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async =>false,
        child: Scaffold(
          drawer: DrawerPage(),
          appBar: appBarCustom([
            "Projects",
            "Apps",
            "Machine Learning",
          ], 24.0, 1),
          body: GFAccordion(
              title: 'GF Accordion',
              content: 'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
              collapsedIcon: Icon(Icons.add),
              expandedIcon: Icon(Icons.minimize)
          ),
        ),
      ),
    );
  }
}