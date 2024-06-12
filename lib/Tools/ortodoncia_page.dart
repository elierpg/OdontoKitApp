import 'package:flutter/material.dart';

class OrtodonciaPage extends StatelessWidget {
  const OrtodonciaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Instrumentos de Ortodoncia',
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
            'Pinza porta tubos',
            [
              {
                'type': 'text',
                'data':
                    'Tienen una parte activa de bocados delicados y una curvatura que permite sortear los brackets que se encuentran por mesial.',
              },
              {
                'type': 'image',
                'data': 'assets/assets/ortodoncia/pinza_porta_tubos.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pinza porta brackets',
            [
              {
                'type': 'text',
                'data':
                    'Se utiliza para cementar los brackets, idealmente de toma indirecta para que el bracket no se suelte. La parte posterior de la pinza suele tener una extensión metálica fina que sirve para posicionar los brackets y quitar los excesos de material de cementado.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/pinza_porta_brackets.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Alicate 139 de Angle o pico de pájaro',
            [
              {
                'type': 'text',
                'data':
                    'Posee un bocado cónico redondeado y el otro bocado es piramidal que se van ensanchando gradualmente. Sobre el bocado cónico se realizan figuras redondas como omegas y loops y sobre el bocado piramidal figuras anguladas. ',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/139.jpg',
              },
            ],
          ),_buildListItem(
            context,
            'Alicate de 3 picos',
            [
              {
                'type': 'text',
                'data':
                    'Tiene un bocado formado por dos picos separados entre sí, en este espacio entra el tercer pico que se encuentra en el otro bocado. Sirve para activar quadhelix y omegas de aparatos de ortopedia o barras palatinas.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/3picos.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Alicate de corte distal',
            [
              {
                'type': 'text',
                'data':
                    'Corta el alambre justo por detrás del tubo molar y asegura el agarre el remanente de arco para que no lesione la mucosa oral. Lo aconsejable es realizar un precorte de los arcos fuera de la boca sobre el modelo de yeso y para eso se usa.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/alicate_corte_distal.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Alicate para alambres pesados o el Gran John',
            [
              {
                'type': 'text',
                'data':
                    'Con capacidad de cortar alambres de hasta .080”.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncassets/ortodoncia/gran_John.png',
              },
            ],
          ),
          _buildListItem(
            context,
            'Alicate para corte de ligaduras metálicas',
            [
              {
                'type': 'text',
                'data':
                    'Diseñados para cortar alambres livianos, hay que tener en cuenta que tienen capacidad de corte para no arruinar los bocados. Algunas cortan hasta un diámetro máximo de .012” y otras hasta .015”. Hay pinzas que se fabrican con un tope para que no se dañe el filo si se quiere cortar alambres más gruesos.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/alicate_corte_ligaduras.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pinza Mathieu',
            [
              {
                'type': 'text',
                'data':
                    'Se utiliza para poner las ligas en los brackets. Es un alicate de toma palmar y bocados finos con leves ranuras para poder sujetar los elastómeros pero no romperlos. Según los bocados algunas de estas pinzas pueden usarse con ligaduras metálicas.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/pinza_mathieu.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pinza Mathieu curva',
            [
              {
                'type': 'text',
                'data':
                    'Se utiliza para poner las ligas en los brackets. Se usa tanto para ortodoncia vestibular como lingual. Es lo suficientemnte fuerte como para insertar arcos o cincharlos por detrás de los tubos.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/pinza_mathieu_curva.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pinza mosquito',
            [
              {
                'type': 'text',
                'data':
                    'Se utiliza para poner las ligas en los brackets. Puede ser curva o recta.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/pinza_mosquito.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Twirl on',
            [
              {
                'type': 'text',
                'data':
                    'Instrumento que sirve para colocar las ligaduras que vienen en bastones.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/twirl_on.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Posicionador de ligaduras',
            [
              {
                'type': 'text',
                'data':
                    'Ayuda a calzar el arco en el slot del bracket y de esa manera se puede sujetar la ligadura.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/posicionador_ligaduras.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Dinamómetro o Tensiómetro Ortodóntico',
            [
              {
                'type': 'text',
                'data':
                    'Se utiliza para mediar la fuerza que ejercen las gomas y resortes.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/dinamómetro.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pinza saca bandas',
            [
              {
                'type': 'text',
                'data':
                    'Diseñada para remover las bandas de los molares. Estos alicates deben poseer un tope de silicona en el bocado que apoya sobre la superficie oclusal, para evitar la ruptura de la cúspide al ejercer presión para que el otro bocado, que calza por gingival, desprenda la banda.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/pinza_saca_bandas.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pinza saca brackets',
            [
              {
                'type': 'text',
                'data':
                    'Sirve para despegar los brackets del esmalte, los bocados se apoyan por dos lados de la malla del mismo y se ejerce presión, la angulación de 60 grados permite el acceso anterior y posterior. Existen pinzas para brackets metálicos, estéticos, brackets de la técnica Damon, etc.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/pinza_saca_brackets.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Lámpara de luz halógena',
            [
              {
                'type': 'text',
                'data':
                    'Se utilizan en la clínica dental para activar materiales restauradores o como agentes aceleradores para el blanqueamiento dental. En la actualidad, la gran mayoría cuenta con tecnología LED, son inalámbricas y no se recalientan. Además, también destacan por un bajo consumo de energía, una menor generación de calor y una gran vida útil.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/lampara.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pie de Rey',
            [
              {
                'type': 'text',
                'data':
                    'Es una herramienta de medición precisa que se utiliza para medir las dimensiones de objetos.',
              },
              {
                'type': 'image',
                'data': 'assets/ortodoncia/pie_de_rey.jpg',
              },
            ],
          ),
          // Agrega los demás elementos según sea necesario
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