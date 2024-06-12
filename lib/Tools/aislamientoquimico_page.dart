import 'package:flutter/material.dart';

class AislamientoQuimicoPage extends StatelessWidget {
  const AislamientoQuimicoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Aislamiento Químico',
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
            'Atropina',
            'Podemos mantener un campo relativamente seco si utilizamos productos químicos que inhiben la secreción salival. Entre estos fármacos encontramos la atropina, que es el más utilizado, también se utiliza la belladona y la quinina, antihistamínicos y antinflamatorios que no poseen corticoides también producen efecto similar. Estos fármacos deben indicarse al paciente previa consulta con su médico para evitar efectos secundarios.  Lo importante es mantener al paciente tranquilo y sedado lo cual evitará el aumento del flujo salival. Si con los procedimientos químicos no se tiene un fin práctico, es con el aislamiento mecánico que se obtienen buenos resultados.',
            'assets/aislamientoquimico/atropina.jpg', // Replace with actual image path
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
