import 'package:flutter/material.dart';
import 'main.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  double _positionX = 0.0;
  double _positionY = 0.0;
  Offset _originalOffset = const Offset(0.0, 0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Información',
          style: TextStyle(
            fontFamily: 'Vibur',
            color: Colors.blueGrey,
            fontWeight: FontWeight.normal,
            fontSize: 32,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onPanStart: (details) {
                  setState(() {
                    _originalOffset =
                        details.localPosition - Offset(_positionX, _positionY);
                  });
                },
                onPanUpdate: (details) {
                  setState(() {
                    _positionX = details.localPosition.dx - _originalOffset.dx;
                    _positionY = details.localPosition.dy - _originalOffset.dy;
                  });
                },
                onPanEnd: (details) {
                  _animateBack();
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.elasticOut,
                  transform:
                      Matrix4.translationValues(_positionX, _positionY, 0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0,
                            3), // Ajusta la posición de la sombra según tus necesidades
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey,
                  ),
                  padding: const EdgeInsets.all(4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        15), // Bordes redondeados para la imagen
                    child: Image.asset(
                      'assets/logo.png', // Reemplaza con la ruta de tu imagen
                      width:
                          128, // Ajusta el ancho de la imagen según tus necesidades
                      height:
                          128, // Ajusta el alto de la imagen según tus necesidades
                      fit: BoxFit
                          .cover, // Ajusta el ajuste de la imagen según tus necesidades
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'OdontoKit',
                style: TextStyle(
                  fontFamily: 'Vibur',
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.normal,
                  fontSize: 32,
                ),
              ),
              Text(
                'Versión $appVersion', // Usa la variable global appVersion
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  constraints: const BoxConstraints(
                      maxWidth: 400), // Ancho máximo del contenedor
                  child: const Text(
                    'Guía esencial para estudiantes y estomatólogos. Explora los instrumentales dentales que se utilizan en la atención primaria con imágenes detalladas y descripciones precisas de su propósito. Optimiza tu práctica clínica y garantiza un tratamiento de calidad para tus pacientes.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildAuthorCard(
                context,
                'Desarrollado por:',
                [
                  {
                    'name': 'Lic. Elier Padilla Gómez',
                    'email': 'epadilla@uclv.cu'
                  },
                  {
                    'name': 'Alejandro Nápoles Sánchez',
                    'email': 'anapoles00@gmail.com'
                  },
                  {
                    'name': ' Dr. Marlene de la Caridad Díaz Pérez',
                    'email': 'marleneperezz1964@gmail.com'
                  },
                  {
                    'name': 'Lorena Lázara Beritán González',
                    'email': 'lorenalazara.beritan@gmail.com'
                  },
                  {'name': 'Melissa Ricardo Rivero',
                  'email': 'ricardomelissa@gmail.com'},
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAuthorCard(
    BuildContext context,
    String title,
    List<Map<String, String>> authors,
  ) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
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
            for (var author in authors)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      author['name']!,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Visibility(
                    visible:
                        author['email'] != null && author['email']!.isNotEmpty,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(
                            Icons.email,
                            color: Colors.blueGrey,
                            size: 18.0,
                          ),
                          const SizedBox(width: 4.0),
                          Text(
                            author['email']!,
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
          ],
        ),
      ),
    );
  }

  void _animateBack() {
    setState(() {
      _positionX = 0.0;
      _positionY = 0.0;
    });
  }
}

void main() {
  runApp(const MaterialApp(
    home: AboutPage(),
  ));
}
