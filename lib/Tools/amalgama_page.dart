import 'package:flutter/material.dart';

class AmalgamaPage extends StatelessWidget {
  const AmalgamaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Amalgama',
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
            'Amalgamador',
            [
              {
                'type': 'text',
                'data':
                    '''Es un dispositivo, generalmente alimentado por corriente alterna, destinado a mezclar, mediante agitación, cápsulas de amalgama que contienen mercurio y partículas de aleaciones dentales, como plata, estaño, zinc y cobre.''',
              },
              {
                'type': 'image',
                'data': 'assets/amalgama/amalgamador.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Mortero y pistilo',
            [
              {
                'type': 'text',
                'data': '''Para la preparación manual de la amalgama.''',
              },
              {
                'type': 'image',
                'data': 'assets/amalgama/mortero.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            '1,5- Vaso Dappen',
            [
              {
                'type': 'text',
                'data':
                    '''Se utiliza en odontología para contener la amalgama. Puede ser metálico o de cristal.''',
              },
              {
                'type': 'image',
                'data': 'assets/amalgama/vaso.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Portamalgama',
            [
              {
                'type': 'text',
                'data':
                    '''Consiste en un dispositivo en forma de pistola que recoge por presión la carga de amalgama en pequeñas porciones y la impele dentro de la cavidad impulsada por un muelle y un émbolo.''',
              },
              {
                'type': 'image',
                'data': 'assets/amalgama/portamalgama.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Condensador o atacador',
            [
              {
                'type': 'text',
                'data':
                    '''Pueden ser finos, medianos o gruesos. En su parte activa son estríados. Se utilizan para atascar la amalgama dentro de la cavidad, se usan desde el más fino hasta el más grueso.''',
              },
              {
                'type': 'image',
                'data': 'assets/amalgama/condensador.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Tallador de Frahm',
            [
              {
                'type': 'text',
                'data':
                    '''Por su forma triangular en la parte activa y una angulación en cada extremo ayuda a definir los surcos y fosas de las caras oclusales.''',
              },
              {
                'type': 'image',
                'data': 'assets/amalgama/frahm.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Bruñidor',
            [
              {
                'type': 'text',
                'data':
                    '''Se utilizan para dar terminación a la superficie de la restauración biselando las paredes y los ángulos y eliminar el exceso de mercurio; se pueden presentar en forma ovoidea, redonda, entre otras, pero tienen la característica que su superficie activa es lisa.''',
              },
              {
                'type': 'image',
                'data': 'assets/amalgama/bruñidor.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Tiras abrasivas',
            [
              {
                'type': 'text',
                'data':
                    '''Sirven para la terminación proximal de las restauraciones. Pueden ser plásticas o metálicas, con una zona inactiva central para no dañar la relación de contacto o introducida en dirección inciso gingival u ocluso gingival.''',
              },
              {
                'type': 'image',
                'data': 'assets/amalgama/tiras.jpg',
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
                'data': 'assets/amalgama/papel.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Cepillos',
            [
              {
                'type': 'text',
                'data':
                    '''Se utilizan para completar el pulido de las restauraciones de amalgama una vez que han alcanzado su total endurecimiento.''',
              },
              {
                'type': 'image',
                'data': 'assets/amalgama/cepillos.jpg',
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
