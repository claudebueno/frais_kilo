import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController puissanceController = TextEditingController();
  TextEditingController kilometreController = TextEditingController();
  double fraisDeplacement = 0.00;

  void calculerFraisDeplacement() {
    double puissance = double.tryParse(puissanceController.text) ?? 0.0;
    double kilometre = double.tryParse(kilometreController.text) ?? 0.0;

    // Ajoutez ici la logique de calcul basée sur le barème URSSAf
    // Par exemple, utilisez une formule ou une table de correspondance.

    setState(() {
      fraisDeplacement = puissance *
          kilometre *
          0.1; // Exemple de calcul simple, à ajuster selon le barème URSSAf.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frais Kilométrique'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: puissanceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Puissance du véhicule (en CV)'),
            ),
            TextField(
              controller: kilometreController,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: 'Distance parcourue (km)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculerFraisDeplacement();
              },
              child: const Text('Calculer'),
            ),
            const SizedBox(height: 20),
            Text('Frais de déplacement: $fraisDeplacement €'),
          ],
        ),
      ),
    );
  }
}
