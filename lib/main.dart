
import 'package:darub/src/pages/EducationPage.dart';
import 'package:darub/src/pages/ExperiencePage.dart';
import 'package:darub/src/pages/HomePage.dart';
import 'package:darub/src/pages/ProjectsPage.dart';
import 'package:darub/src/pages/SkillsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      title: 'darub',
      theme: ThemeData(
        primaryColor:Colors.blueAccent,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id:(BuildContext context)=>HomePage(),
        SkillsPage.id:(BuildContext context)=>SkillsPage(),
        ProjectsPage.id:(BuildContext context)=>ProjectsPage(),
        ExperiencePage.id:(BuildContext context)=>ExperiencePage(),
        EducationPage.id:(BuildContext context)=>EducationPage(),
      },
    );
  }
}