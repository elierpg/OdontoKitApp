import 'package:flutter/material.dart';

class ComplementarioPage extends StatelessWidget {
  const ComplementarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Complementario',
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
            'Sonda dental',
            'Instrumento fabricado en acero inoxidable, de punta roma, se utiliza para determinar el estado del periodonto, para evaluar el margen gingival, la respuesta hemorrágica a la presión, la pérdida ósea y dentaria, detectar la presencia de biofilm o cálculo y lesiones de furca. Es utilizado también para explorar las variaciones de la anatomía dental, las fosas, surcos, fisuras, fracturas de las superficies dentales y localizar caries subgingivales.',
            'assets/complementario/Sonda_dental.jpg', // Replace with actual image path
          ),
          _buildListItem(
            context,
            'Jeringa de aire y agua',
            'Es un dispositivo que se acopla al sillón dental y permite echar tanto agua como aire: agua para limpiar la zona y aire para secarla. Goza de una gran durabilidad. Se utiliza para:',
            'assets/complementario/Jeringa.jpg', // Replace with actual image path
            additionalContent: [
              '• Enjuagar la cavidad.',
              '• Eliminar restos de tejidos dentarios durante la preparación de cavidades.',
              '• Eliminar restos de materiales durante la restauración.',
              '• Es imprescindible para emitir un diagnóstico.',
            ],
          ),
          _buildListItem(
            context,
            'Vitalómetro o pulpovitalómetro',
            'Es un equipo por el que pasa una corriente eléctrica que permite diagnosticar, con su auxilio, la vitalidad de un diente.',
            'assets/complementario/Vitalometro.jpg', // Replace with actual image path
          ),
          _buildListItem(
            context,
            'Negatoscopio',
            'Es un dispositivo médico emisor de luz, cuadrado o rectangular que produce una intensidad de iluminación uniforme, ideado para la observación de radiografías mediante el uso de la transparencia de un negativo. Ayudan a facilitar el diagnóstico preciso y el tratamiento de enfermedades graves. Además, proporcionan una explicación de los síntomas que experimentan las personas con referencia a su salud.',
            'assets/complementario/Negatoscopio.jpg', // Replace with actual image path
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
              alignment: Alignment.center,
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
