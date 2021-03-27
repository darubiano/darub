import 'package:cloud_firestore/cloud_firestore.dart';

class Me {
   CollectionReference collectionReference = FirebaseFirestore.instance.collection("Me");
   void prueba(){
     DocumentReference db = collectionReference.doc("value");
     Map<String, dynamic> map = {
      "name": "David Andres Rubiano Venegas",
      "profession": "Systems Enginner",
      "about":"Hello! I'm David Rubiano\nSystems engineer with management and knowledge of office tools (Word, Excel and PowerPoint). Basic knowledge of HTML, CSS, JavaScript, Photoshop, MySQL, Redis, Python, Flutter and R studio. Ability to work in a team, willingness to learn, honest, committed and responsible.",
      "basicInformation":{
        "age":"24",
        "email":"rubianox6000@gmail.com",
        "phone":"+57 318-372-5621",
        "address":"Bogota,Colombia",
        "language":"Spanish, English",
      }
    };
    db.set(map).whenComplete(() => print("bien"));
  }
  Future<Map<String, dynamic>> getdata() async{
      DocumentReference db = collectionReference.doc("value");
      DocumentSnapshot value = await db.get();
      return value.data();
  }  
}