import 'package:flutter/material.dart';

class ActivoManualPage extends StatelessWidget {
  const ActivoManualPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Activo manual o cortantes de mano',
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
            'Cincel',
            'En su parte activa son láminas prolongadas, de sección rectangular, que pueden ser rectos o curvos, con un bisel afilado, doble o simple. Se fabrican de forma recta o angulada. Los más grandes se utilizan para la modelación en regiones anteriores y modificar el contorno óseo, los medianos para la dentina o el esmalte y para los depósitos grandes de cálculo, y los pequeños se destinan a las encías.',
            'assets/activomanualocortantesdemano/Cincel.jpg', // Replace with actual image path
          ),
          _buildListItem(
            context,
            'Azadones',
            'En su parte activa su corte es agudo y angulado, y perpendicular al mango del instrumento. Su propósito es recortar de forma manual pequeñas porciones de tejido dental, eliminar grandes cálculos supragingivales y trabajar la última fase de la preparación de las cavidades.',
            'assets/activomanualocortantesdemano/Azadones.jpg', // Replace with actual image path
          ),
          _buildListItem(
            context,
            'Recortador del margen gingival',
            'Es un instrumento dental utilizado en odontología para preparar y dar forma a los márgenes de las restauraciones dentales. Se utiliza principalmente en la técnica de restauración dental con coronas y puentes dentales.',
            'assets/activomanualocortantesdemano/Recortador.jpg', // Replace with actual image path
          ),
          _buildListItem(
            context,
            'Hachuelas',
            'Instrumento doble angulado, utilizado para abrir una cavidad o para romper esmalte delgado sin soporte dentario, también se utilizan para la preparación de áreas retentivas y la eliminación de ángulos internos y de caries duras.',
            'assets/activomanualocortantesdemano/Hachuela.jpg', // Replace with actual image path
          ),
          _buildListItem(
            context,
            'Excavadores o cucharillas',
            'La hoja de este instrumento es cóncava, curva y tiene un borde con filo a todo su alrededor, sirve para retirar dentina, actuando desde el centro a la periferia. Son muy utilizadas en las cavidades profundas, donde otro instrumento pudiera provocar una herida pulpar, generalmente son de doble extremo, también se utilizan para el legrado del alveolo dentario tras la exodoncia, desbridamiento quirúrgico y la eliminación de quistes. Existen de diferentes formas y tamaños.',
            'assets/activomanualocortantesdemano/Cucharillas.jpg', // Replace with actual image path
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
