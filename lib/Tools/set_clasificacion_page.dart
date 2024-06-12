import 'package:flutter/material.dart';

class SetClasificacionPage extends StatelessWidget {
  const SetClasificacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Set de Clasificación',
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
            'Espejo',
            'Consta básicamente del espejo, el mango y el conector que los une. Se utiliza en todos los tratamientos estomatológicos y para:',
            'assets/setclasificacion/Espejo.jpg', // Replace with actual image path
            additionalContent: [
              '• Reflejar imágenes por visión indirecta.',
              '• Separar los labios, la lengua y los carrillos.',
              '• Proteger los tejidos blandos vecinos al diente que se va a tratar.',
              '• Iluminación del campo operatorio.',
              '• El extremo del mango sirve para percusión.',
            ],
          ),
          _buildListItem(
            context,
            'Explorador',
            'Terminado en punta fina, la parte activa de estos instrumentos puede ser de varias formas, puede ser sencilla o de extremo doble; estos últimos son los más aconsejables, se emplea para detectar las caries dentales, la dureza de los tejidos y la retención de las cavidades, eliminar placa o algún tipo de elemento que pueda limitar la visión correcta en la superficie dental, Debe estar siempre bien afilado. Se utiliza para todos los tratamientos estomatológicos.',
            'assets/setclasificacion/Explorador.jpg', // Replace with actual image path
          ),
          _buildListItem(
            context,
            'Pinzas para algodón',
            'Aunque su nombre indica su principal uso, es útil para determinadas circunstancias. Se utiliza para todos los tratamientos estomatológicos.',
            'assets/setclasificacion/Pinza.jpg', // Replace with actual image path
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
