import 'package:darub/src/DrawerPage.dart';
import 'package:darub/src/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String id = 'Home';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            drawer: DrawerPage(),
            appBar: appBarCustom([
              "David Andres Rubiano Venegas",
              "Discipline is the best tool",
              "Design first, then code",
            ], 24.0, 1),
            body: Container()),
      ),
    );
  }
}
