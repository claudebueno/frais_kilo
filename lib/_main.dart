import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double puissance = 3.0;
  double kilometres = 0.0;
  double resultatCalcul = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculateur de Frais Kilométriques'),
      ),
      backgroundColor: Colors.green,
      margin: const EdgeInsets.all(20.0),
      body: Column(

        children: <Widget>[
          // Image pleine largeur
          Image.asset('lib/assets/images/fraiskiloroad.png',
            fit: BoxFit.cover,
            height: 200.0,
            width: double.infinity,
          ),
          // Liste de choix pour la puissance
          DropdownButton<double>(
            value: puissance,
            onChanged: (value) {
              setState(() {
                puissance = value!;
              });
            },
            items: [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0]
                .map<DropdownMenuItem<double>>((double value) {
              return DropdownMenuItem<double>(
                value: value,
                child: Text('Puissance $value CV'),
              );
            }).toList(),
          ),
          // Input pour le nombre de kilomètres
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                kilometres = double.parse(value);
              });
            },
            decoration:
                InputDecoration(labelText: 'Nombre de kilomètres parcourus'),
          ),
          // Bouton pour lancer le calcul
          ElevatedButton(
            onPressed: () {
              setState(() {
                resultatCalcul =
                    calculerFraisKilometriques(puissance, kilometres);
              });
            },
            child: Text('Calculer'),
          ),
          // Champ texte pour afficher le résultat du calcul
          Text('Résultat du calcul : $resultatCalcul €'),
        ],
      ),
    );
  }

  double calculerFraisKilometriques(double puissance, double kilometres) {
    // Votre logique de calcul ici, utilisez la logique précédemment fournie ou adaptez-la.
    return puissance * 0.3 + kilometres * 0.1;
  }
}
