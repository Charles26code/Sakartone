import 'dart:ffi';

class Worker {
  String firstname;
  String lastname;
  String embauche;
  Float salaireJ;
  String team;

  Worker({
    required this.firstname,
    required this.lastname,
    required this.embauche,
    required this.salaireJ,
    required this.team,
  });

  Worker.fromJson(Map<String, dynamic> json)
      : firstname = json['firstname'],
        lastname = json['lastname'],
        embauche = json['embauche'],
        salaireJ = json['salaireJ'],
        team = json['team'];

  Map<String, dynamic> toJson() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'embauche': embauche,
      'salaireJ': salaireJ,
      'team': team,
    };
  }

  String showWorker() {
    return "$firstname\n$lastname\n$embauche\n$salaireJ\n$team\n";
  }
}