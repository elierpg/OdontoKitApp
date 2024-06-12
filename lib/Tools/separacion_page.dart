import 'package:flutter/material.dart';

class SeparacionPage extends StatelessWidget {
  const SeparacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Separación',
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
            'Cuñas de madera',
            [
              {
                'type': 'text',
                'data':
                    '''son preferibles a las de plástico porque tienen un efecto mixto. Tienen la capacidad de absorber la humedad aumentando su espesor. La base de la cuña debe colocarse quedando paralela a la papila. En el sector posterior se coloca en sentido linguo-vestibular, al contrario del sector anterior.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacion/cunademadera.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Cuñas de plástico',
            [
              {
                'type': 'text',
                'data':
                    '''La base de la cuña debe colocarse quedando paralela a la papila. En el sector posterior se coloca en sentido linguo-vestibular, al contrario del sector anterior.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacion/cunadeplastico.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Cuñas de silicona o goma',
            [
              {
                'type': 'text',
                'data':
                    '''Los espaciadores utilizados en los dientes son pequeños, tienen consistencia elástica y parecen una banda de goma con un diámetro de alrededor de 1 cm.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacion/cunadesilicona.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Gutapercha',
            [
              {
                'type': 'text',
                'data':
                    '''Se coloca la gutapercha en su estado reblandecido y por compresión se logra la separación.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacion/Gutapercha.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Hilo dental',
            [
              {
                'type': 'text',
                'data':
                    '''se utiliza cuando solo es pequeño el espacio que se quiere lograr, interponiendo el hilo de seda a través del espacio interdentario y atando este mediante un nudo de tal forma que quede ajustado entre los dientes.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacion/hilodental.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Ligadura de alambre de ortodoncia',
            [
              {
                'type': 'text',
                'data':
                    '''Puede utilizarse el alambre para ligaduras de ortodoncia, del diámetro adecuado, rodeando el punto de contacto. Después de fijada la lijadura, se comienza a retorcer por mediación de un alicate los extremos del alambre para que al ajustarse sobre las caras proximales de los dientes contiguos se logre la separación.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacion/ligadura.jpg',
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
