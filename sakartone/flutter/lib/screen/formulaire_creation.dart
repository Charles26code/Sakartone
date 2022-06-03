import 'package:day_picker/day_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormulaireCreation extends StatelessWidget {
  const FormulaireCreation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nom;
    TextEditingController prenom;
    TextEditingController salaire;
    TextEditingController date;

    List<DayInWeek> _days = [
      DayInWeek(
        "Zo",
      ),
      DayInWeek(
        "Ma",
      ),
      DayInWeek(
        "Di",
      ),
      DayInWeek(
        "Wo",
      ),
      DayInWeek(
        "Do",
      ),
      DayInWeek("Vr", isSelected: true),
      DayInWeek("Za", isSelected: true),
    ];
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Color.fromRGBO(254, 183, 1, 1)),
          backgroundColor: Colors.white,
          title: const Text('Sakartone 📦',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(254, 183, 1, 1),
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Créer un salarié",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Montserrat'),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: 'What do people call you?',
                            labelText: 'Name *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          }),
                      TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: 'What do people call you?',
                            labelText: 'Prenom *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          }),
                      TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: 'What do people call you?',
                            labelText: 'Salaire *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          }),
                    ]),
                TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'What do people call you?',
                      labelText: 'Date ambauche *',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    }),
                SelectWeekDays(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  days: _days,
                  border: false,
                  boxDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [Color(0xFFE55CE4), Color(0xFFBB75FB)],
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                  ),
                  onSelect: (values) {},
                )
              ]),
        ));
  }
}
