import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBarCustom(List<String> texts, double fontSize, int type){
  return AppBar(
      title: Container(
        child: type==0?
        ColorizeAnimatedTextKit(
          text: texts,
          textStyle: TextStyle(fontSize: fontSize, fontFamily: "Agne"),
          textAlign: TextAlign.start,
          speed: Duration(milliseconds: 150),
          colors: [
            Colors.black,
            Colors.blue,
            Colors.yellow,
            Colors.red,
          ],
        ):
        TypewriterAnimatedTextKit(
          text: texts,
          textStyle: TextStyle(fontSize: fontSize, fontFamily: "Agne", color: Colors.white),
          textAlign: TextAlign.start,
          speed: Duration(milliseconds: 150),
        ),
      ),
      centerTitle: true,
    );
}
