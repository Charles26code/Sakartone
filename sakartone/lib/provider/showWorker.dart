import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sakartone/data/worker.dart';
import './../model/profile_provider.dart';
import './../model/workerModel.dart';
import 'package:provider/provider.dart';


class DataProvider extends StatelessWidget {
  static const routeName = '/addworker';
  const DataProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //List<Worker> workers = Provider.of<WorkerProvider>(context).workers;
    //List<Worker> workers = Worker(firstname: "firstname", lastname: "lastname", embauche: "embauche", salaireJ: 60.0, workDay: ["workDay"], team: "team") as List<Worker>;
    //List<Worker> workers=[Worker(firstname: "Adrien",lastname: "Lamé", embauche: "07/10/2022", salaireJ: 60.23, workDay: ["Lundi","Mardi","Jeudi"],team:"carton")];
    List<Worker> workers = dataworker;
    double salaires = calcule_charge_salairial(workers);
    print(salaires);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Données depuis la base de données'),
      ),
      body: ListView.separated(
        itemCount: workers.length,
        itemBuilder: (context, index) {
          return Text(workers[index].showWorker());
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 15,
          );
        },
      ),

    );
  }

  double calcule_charge_salairial(List<Worker> employeeList) {
  double chargeSalariale = 0;
  employeeList.forEach((element) =>
      chargeSalariale += (element.salaireJ) * element.workDay.length);
  return chargeSalariale;
}
}
