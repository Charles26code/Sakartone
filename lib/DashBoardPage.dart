import 'package:flutter/material.dart';
import 'package:sakartone/BarGraph.dart';



class DashBoardPage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child:Text(
          "chiffre d’affaire: 366 000€"),),
          Center(child:Text(
          "Cout salarial :"),),
          Center(child: Icon(Icons.person),),
          Center(child:Text('236€')),
             Center(
                      child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: BarGraph(),
                  )),
          ],
        ),
      ), 
    );
  }
}
