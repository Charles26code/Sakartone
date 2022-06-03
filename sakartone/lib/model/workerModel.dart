import 'dart:ffi';

class Worker {
  String firstname;
  String lastname;
  String embauche;
  Float salaireJ;
  List<String> workDay;
  String team;

  Worker({
    required this.firstname,
    required this.lastname,
    required this.embauche,
    required this.salaireJ,
    required this.workDay,
    required this.team,
  });

  Worker.fromJson(Map<String, dynamic> json)
      : firstname = json['firstname'],
        lastname = json['lastname'],
        embauche = json['embauche'],
        salaireJ = json['salaireJ'],
        workDay = json['workDay'],
        team = json['team'];

  Map<String, dynamic> toJson() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'embauche': embauche,
      'salaireJ': salaireJ,
      'workDay': workDay,
      'team': team,
    };
  }

  String showWorker() {
    return "$firstname\n$lastname\n$embauche\n$salaireJ\n$workDay\n$team\n";
  }
}