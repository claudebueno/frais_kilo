import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController puissanceController = TextEditingController();
  double fraisDeplacement = 0.0;

  void calculerFraisDeplacement() {
    double puissance = double.tryParse(puissanceController.text) ?? 0.0;

    // Ajoutez ici la logique de calcul basée sur le barème URSSAf
    // Par exemple, utilisez une formule ou une table de correspondance.

    setState(() {
      fraisDeplacement = puissance *
          0.1; // Exemple de calcul simple, à ajuster selon le barème URSSAf.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculateur de Frais de Déplacement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: puissanceController,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Puissance du véhicule (en CV)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculerFraisDeplacement();
              },
              child: Text('Calculer'),
            ),
            SizedBox(height: 20),
            Text('Frais de déplacement: $fraisDeplacement €'),
          ],
        ),
      ),
    );
  }
}