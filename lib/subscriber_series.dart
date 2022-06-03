import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SalarieSeries {
  final String jour;
  final String equipe;
  final int nbEmployee;
  final charts.Color barColor;

  SalarieSeries({required this.jour, required this.equipe, required this.nbEmployee, required this.barColor});
 
}

