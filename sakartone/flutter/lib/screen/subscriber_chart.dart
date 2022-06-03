import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:sakartone/screen/subscriber_series.dart';

class SubscriberChart extends StatelessWidget {
  SubscriberChart({required this.data});
  final List<SalarieSeries> data;

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SalarieSeries, String>> series = [
      charts.Series(
          id: "Salaire",
          data: data,
          domainFn: (SalarieSeries series, _) => series.jour,
          measureFn: (SalarieSeries series, _) => series.nbEmployee,
          colorFn: (SalarieSeries series, _) => series.barColor)
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Salarié Présent par jour et par équipe",
                //style: Theme.of(context).textTheme.body2,
              ),
              Expanded(
                child: charts.BarChart(
                  series,
                  animate: true,
                  behaviors: [new charts.SeriesLegend()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
