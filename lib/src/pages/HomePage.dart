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
    //final Me me = new Me();
    TextStyle textStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    );
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
          body: Container(
            margin: EdgeInsets.all(10),
            child: StreamBuilder(
              stream: Me().collectionReference.doc('value').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Container(child: Text('Cargando'));
                }
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('About', style: textStyle),
                    Text('${snapshot.data["about"]}',textAlign: TextAlign.justify),
                    Text('Basic Information', style: textStyle),
                    Text('AGE: ${snapshot.data["basicInformation"]["age"]}'),
                    Text('EMAIL: ${snapshot.data["basicInformation"]["email"]}'),
                    Text('PHONE: ${snapshot.data["basicInformation"]["phone"]}'),
                    Text('ADDRESS: ${snapshot.data["basicInformation"]["address"]}'),
                    Text('LANGUAGE: ${snapshot.data["basicInformation"]["language"]}'),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

/*
Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.one_k),
                onPressed: () async {
                  me.prueba();
                },
              ),
              IconButton(
                icon: Icon(Icons.show_chart, size: 25,),
                onPressed: () async {
                  Map<String, dynamic> result = await me.getdata();
                  print(result);
                },
              ),
            ],
          ),
*/
