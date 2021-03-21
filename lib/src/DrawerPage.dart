import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:darub/src/pages/EducationPage.dart';
import 'package:darub/src/pages/ExperiencePage.dart';
import 'package:darub/src/pages/HomePage.dart';
import 'package:darub/src/pages/ProjectsPage.dart';
import 'package:darub/src/pages/SkillsPage.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  static const String id = 'Drawer';
  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    return Drawer(
      child: Container(
          decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/gif/celular.gif'),
                      fit: BoxFit.cover)),
        child: SlideInDown(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.account_box, color: color,size:35),
                title: Text('Me', style: TextStyle(color: color),),
                onTap: () {
                  Navigator.popAndPushNamed(context,HomePage.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.apps, color: color,size:35),
                title: Text('Skills', style: TextStyle(color: color),),
                onTap: () {
                  Navigator.popAndPushNamed(context,SkillsPage.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.art_track, color: color,size:35),
                title: Text('Projects', style: TextStyle(color: color),),
                onTap: () {
                  Navigator.popAndPushNamed(context,ProjectsPage.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.show_chart, color: color,size:35,),
                title: Text('Experience', style: TextStyle(color: color),),
                onTap: () {
                  Navigator.popAndPushNamed(context,ExperiencePage.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.collections_bookmark, color: color,size:35),
                title: Text('Education', style: TextStyle(color: color),),
                onTap: () {
                  Navigator.popAndPushNamed(context,EducationPage.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}