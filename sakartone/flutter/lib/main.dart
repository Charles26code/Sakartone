import 'package:flutter/material.dart';
import 'package:sakartone/screen/DashBoardPage.dart';
import 'package:sakartone/screen/Login.dart';
import 'package:sakartone/screen/LoginScreen.dart';
//import 'form_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Première application',
      //theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      //home: View_1(), // premiere vue
      // home: View_2(), // premiere vue
      // home: View_3(), // premiere vue
      home: DashBoardPage(),
    );
  }
}
