import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:sakartone/subscriber_series.dart';
import 'package:sakartone/subscriber_chart.dart';



class BarGraph extends StatelessWidget {
  final List<SalarieSeries> graphData = [
    SalarieSeries(
      jour: "Lundi",
      equipe:"carton",
      nbEmployee: 3,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
     SalarieSeries(
      jour: "Lundi",
      equipe:"scotch",
      nbEmployee: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
     SalarieSeries(
      jour: "Mardi",
      equipe:"carton",
      nbEmployee: 3,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SalarieSeries(
      jour: "Mardi",
      equipe:"scotch",
      nbEmployee: 3,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
     SalarieSeries(
      jour: "Mecredi",
      equipe:"carton",
      nbEmployee: 2,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SalarieSeries(
      jour: "Jeudi",
      equipe:"carton",
      nbEmployee: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SalarieSeries(
      jour: "Vendredi",
      equipe:"carton",
      nbEmployee: 2,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
     SalarieSeries(
      jour: "Samedi",
      equipe:"carton",
      nbEmployee: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
     SalarieSeries(
      jour: "Dimanche",
      equipe:"carton",
      nbEmployee: 0,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return SubscriberChart(
      data: graphData,
    );
  }
}
