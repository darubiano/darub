import 'package:darub/src/models/Me.dart';
import 'package:darub/src/DrawerPage.dart';
import 'package:darub/src/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'Home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Me me = new Me();
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
          body: IconButton(
            icon: Icon(Icons.one_k),
            onPressed: () async {
              me.prueba();
            },
          ),
        ),
      ),
    );
  }
}
