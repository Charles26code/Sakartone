import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:collection'; // nouveaux types de listes comme UnmodifiableListView
import 'dart:convert'; // pour decoder la r´eponse http
import './workerModel.dart';
import './../data/worker.dart' as data;

class WorkerProvider with ChangeNotifier {
  // Variable priv´ee pour qu'elle ne puisse pas ^etre modifi´ee par
  // les widgets qui l'utilisent
  final List<Worker> _workers = data.dataworker;
  // Getter pour l'acc`es en lecture
  // Pas de modificiation possible gr^ace au type UnmodifiableListView
  UnmodifiableListView<Worker> get workers => UnmodifiableListView(_workers);
  // M´ethode pour aller chercher des donn´ees dans la base de donn´ees
  // via le serveur en local
}