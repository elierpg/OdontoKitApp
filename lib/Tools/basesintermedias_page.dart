import 'package:flutter/material.dart';

class BasesIntermediasPage extends StatelessWidget {
  const BasesIntermediasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Bases intermedias, pastas y resinas',
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
            'Loseta de mezclar',
            [
              {
                'type': 'text',
                'data':
                    '''Debe ser de cristal liso, grueso, es donde se coloca el material para mezclar.''',
              },
              {
                'type': 'image',
                'data': 'assets/basesintermedias/loseta.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Espátula',
            [
              {
                'type': 'text',
                'data':
                    '''Pueden ser de metal o plástica y se utilizan para batir el material.''',
              },
              {
                'type': 'image',
                'data': 'assets/basesintermedias/espatula.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Cola de castor',
            [
              {
                'type': 'text',
                'data':
                    '''Para llevar a la cavidad los distintos materiales como bases, cementos, etc.''',
              },
              {
                'type': 'image',
                'data': 'assets/basesintermedias/cola.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Condensador de cono fino',
            [
              {
                'type': 'text',
                'data':
                    '''Son utilizados para condensar la base intermedia en el fondo de la cavidad, para proteger la dentina.''',
              },
              {
                'type': 'image',
                'data': 'assets/basesintermedias/condensador.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Lámpara de polimerización',
            [
              {
                'type': 'text',
                'data':
                    '''Se utilizan en la clínica dental para activar materiales restauradores o como agentes aceleradores para el blanqueamiento dental. En la actualidad, la gran mayoría cuenta con tecnología LED, son inalámbricas y no se recalientan. Además, también destacan por un bajo consumo de energía, una menor generación de calor y una gran vida útil.''',
              },
              {
                'type': 'image',
                'data': 'assets/basesintermedias/lampara.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Papel articular',
            [
              {
                'type': 'text',
                'data':
                    '''Aunque el papel de articular no constituye un instrumento como tal, es muy útil para la terminación adecuada de las restauraciones. Existen distintos espesores y colores de papel. Estos pueden montarse en una pinza diseñada para ese fin. Se presentan en forma de rollos o en porciones ya cortadas por el fabricante. Aunque el papel de articular no constituye un instrumento como tal, es muy útil para la terminación adecuada de las restauraciones. Existen distintos espesores y colores de papel.''',
              },
              {
                'type': 'image',
                'data': 'assets/basesintermedias/papel.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pinceles',
            [
              {
                'type': 'text',
                'data':
                    '''Se utilizan para la colocación de distintos materiales. Su forma y cuello flexible permiten la aplicación de material dental en zonas de difícil acceso.''',
              },
              {
                'type': 'image',
                'data': 'assets/basesintermedias/pinceles.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Aplicadores',
            [
              {
                'type': 'text',
                'data':
                    '''Han sido diseñados para una colocación precisa y fácil aplicación de los materiales dentales en un área limitada. Tienen un cuello flexible y sus fibras no desprenden pelusa.''',
              },
              {
                'type': 'image',
                'data': 'assets/basesintermedias/aplicador.jpg',
              },
            ],
          ),
          // Agrega más elementos de acuerdo a tus necesidades
        ],
      ),
    );
  }

  Widget _buildListItem(
    BuildContext context,
    String title,
    List<Map<String, dynamic>> contentList,
  ) {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: contentList.map((content) {
                if (content['type'] == 'text') {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      content['data'],
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                  );
                } else if (content['type'] == 'image') {
                  return Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      content['data'],
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.7,
                      fit: BoxFit.contain,
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
