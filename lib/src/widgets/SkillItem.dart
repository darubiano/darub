import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SkillItem extends StatelessWidget {
  final String skill;
  final double percent;
  const SkillItem({@required this.skill,@required this.percent});
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/img/skills/${skill.toLowerCase()}.png',
              width: size.width * 0.2,
            ),
            Text(
              '${skill.substring(0,1).toUpperCase()}${skill.substring(1)}',
              style: TextStyle(fontSize: 20),
            ),
            LinearPercentIndicator(
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: percent,
              center: Text('${percent*100.round()}%'),
              progressColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
