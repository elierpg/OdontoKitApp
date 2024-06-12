import 'package:flutter/material.dart';

class AislamientoRelativoPage extends StatelessWidget {
  const AislamientoRelativoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Aislamiento Relativo',
          style: TextStyle(
            fontFamily: 'Vibur',
            color: Colors.blueGrey,
            fontWeight: FontWeight.normal,
            fontSize: 32,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildListItem(
            context,
            'Algodón',
            'Absorbe los fluidos bucales, lo que facilita el trabajo en la boca del paciente y retractar la mejilla mientras absorbe la humedad.',
            'assets/aislamientorelativo/algodon.jpg', // Replace with actual image path
          ),
          _buildListItem(
            context,
            'Eyector de saliva',
            'Dispositivo adaptado a la salivera de la unidad dental, que absorbe por vacío la saliva y líquidos contenidos en la cavidad bucal. Existen aspiradores de distintos tamaños y materiales. Actualmente se utilizan los desechables que son constituidos de materiales plásticos que tienen por dentro una guía metálica que permite dar la forma adecuada para que se adapten a la anatomía individual de cada paciente. Antiguamente se utilizaban los metálicos que admiten ser esterilizados y vueltos a utilizar.',
            'assets/aislamientorelativo/eyector.jpg', // Replace with actual image path
          ),
          _buildListItem(
            context,
            'Portarrollo de algodón',
            'Se utiliza para sostener los rollos de algodón.',
            'assets/aislamientorelativo/rollo.jpg', // Replace with actual image path
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(
    BuildContext context,
    String title,
    String description,
    String imagePath, {
    List<String>? additionalContent,
  }) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 8.0),
            if (additionalContent != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: additionalContent
                    .map(
                      (content) => Text(
                        content,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                    )
                    .toList(),
              ),
            const SizedBox(height: 8.0),
            Container(
              alignment: Alignment.center, // Center the image
              child: Image.asset(
                imagePath,
                height: MediaQuery.of(context).size.height *
                    0.3, // Adjust the height as needed
                width: MediaQuery.of(context).size.width *
                    0.7, // Adjust the width as needed
                fit: BoxFit
                    .contain, // Ensure the image fits within the defined dimensions
              ),
            ),
          ],
        ),
      ),
    );
  }
}
