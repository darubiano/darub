import 'package:darub/src/DrawerPage.dart';
import 'package:darub/src/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';
import 'package:darub/src/widgets/SkillItem.dart';

class SkillsPage extends StatelessWidget {
  static const String id = 'Skills';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          drawer: DrawerPage(),
          appBar: appBarCustom([
            "Skills",
            "Python",
            "Flutter(Dart)",
            "SpringBoot(Java)",
            "Tensorflow"
          ], 24.0, 1),
          body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: size.width>600 ? 3:2,
            ),
            children: [
              SkillItem(skill:'python',percent: 0.8),
              SkillItem(skill:'flutter',percent: 0.7),
              SkillItem(skill:'java',percent: 0.65),
              SkillItem(skill:'rStudio',percent: 0.6),
              SkillItem(skill:'node',percent: 0.5),
              SkillItem(skill:'react',percent: 0.5),
              SkillItem(skill:'postgres',percent: 0.7),
              SkillItem(skill:'sqlserver',percent: 0.7),
              SkillItem(skill:'github',percent: 0.7),
              SkillItem(skill:'html',percent: 0.8),
              SkillItem(skill:'photoshop',percent: 0.7),
            ],
          ),
        ),
      ),
    );
  }
}
