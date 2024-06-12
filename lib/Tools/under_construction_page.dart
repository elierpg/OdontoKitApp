import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UnderConstructionPage extends StatelessWidget {
  const UnderConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Página en Construcción',
          style: TextStyle(
            fontFamily: 'Vibur',
            color: Colors.blueGrey,
            fontWeight: FontWeight.normal,
            fontSize: 32,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'EN CONSTRUCCIÓN',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            const SizedBox(height: 20),
            Lottie.asset(
              'assets/animations/under_construction.json',
              height: 200,
            ),
            const SizedBox(height: 20),
            Text(
              'Esta herramienta está en construcción...',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: Colors.blueGrey[700],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Adding fun icons and text
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.construction, color: Colors.orange, size: 45),
                SizedBox(width: 8),
                Icon(Icons.warning, color: Colors.red, size: 45),
                SizedBox(width: 8),
                Icon(Icons.build, color: Colors.blue, size: 45),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              '¡Gracias por tu paciencia!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.green[700],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20), // Adjusted spacing
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blueGrey[700], // Text color
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.home),
              label: const Text('Volver a Inicio'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
