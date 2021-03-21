import 'package:darub/src/DrawerPage.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  static const String id = 'Education';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async =>false,
        child: Scaffold(
          drawer: DrawerPage(),
          appBar: AppBar(
            title: Text('mundo'),
            centerTitle: true,
            ),
          body: Center(
            child: Text('Hola Mundo'),
          ),
        ),
      ),
    );
  }
}