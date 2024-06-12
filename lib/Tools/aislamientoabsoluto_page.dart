import 'package:flutter/material.dart';

class AislamientoAbsolutoPage extends StatelessWidget {
  const AislamientoAbsolutoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Aislamiento Absoluto',
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
            'Dique de goma o hule',
            [
              {
                'type': 'text',
                'data':
                    '''Es una lámina de látex que puede ser cuadrada, rectangular o en rollos de varios metros de diferentes colores y espesores que sirve para aislar uno o más dientes durante una intervención dental. Debe cortarse de tamaño adecuado (desde la base de la nariz hasta el mentón y hacia los lados hasta una pulgada o dos después de la comisura labial.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/dique.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Arcos o portadiques',
            [
              {
                'type': 'text',
                'data':
                    '''Son instrumentos con pequeños picos que prenden el dique de goma o hule y lo mantienen tensionado y en posición, el mismo se utiliza para procedimientos restauradores y endodóncicos.''',
              },
              {
                'type': 'text',
                'data':
                    '''• de Young: Es un arco metálico que tiene forma de U. Su fabricación es con acero, de alta calidad para uso humano, que nos garantizará una mayor durabilidad y un desgaste mínimo, es esterilizable.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/young.jpg',
              },
              {
                'type': 'text',
                'data':
                    '''• Articulable: incorpora una articulación en el centro para un acceso fácil y mejorar el posicionamiento en la radiografía, es esterilizable.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/articulable.jpg',
              },
              {
                'type': 'text',
                'data':
                    '''• de Jiffy, de forma circular, de plástico que permiten la toma de radiografías durante el tratamiento endodónticos.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/jiffy.jpg',
              },
              {
                'type': 'text',
                'data':
                    '''• de Ostby, de forma hexagonal, de plástico que permiten la toma de radiografías durante el tratamiento endodónticos.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/ostby.jpg',
              },
              {
                'type': 'text',
                'data':
                    '''• Quickdam: de forma oval, mucho más sencillo de colocar y cómodo para el paciente.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/quickdam.jpg',
              },
              {
                'type': 'text',
                'data': '''Readydam: con sostenedor incorporado.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/readydam.jpg',
              },
              {
                'type': 'text',
                'data':
                    '''• Portadique tipo Cogwell: consta de pinzas que toman firmemente la goma a cada lado y luego lo mantiene por detrás de la nuca del paciente. En la actualidad no se usa mucho.''',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pinza perforadora o de Ainsworth',
            [
              {
                'type': 'text',
                'data':
                    '''Es un instrumento usado para producir un corte circular limpio en la hoja del dique de hule para que se introduzca el diente que ha de aislarse. Generalmente presenta una variedad de tamaños de orificios lo que hace un instrumento muy versátil.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/perforadoras.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pinza portagrapas tipo Brewer',
            [
              {
                'type': 'text',
                'data':
                    '''Es un elemento importante que consiste en un alicante de mordientes muy largos con un resorte y una traba. Se colocan los mordientes en los agujeros que tienen los clamps y se acciona la pinza, extendiendo los bocados de la grapa mantieniendo el clamp ligeramente abierto bajo tensión, fijando esta posición por medio de la traba para su posterior colocación y remoción del diente.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/brewer.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Pinza portagrapas tipo Ivory',
            [
              {
                'type': 'text',
                'data':
                    '''Es un elemento importante que consiste en un alicante de mordientes muy largos con un resorte y una traba. Se colocan los mordientes en los agujeros que tienen los clamps y se acciona la pinza, extendiendo los bocados de la grapa mantieniendo el clamp ligeramente abierto bajo tensión, fijando esta posición por medio de la traba para su posterior colocación y remoción del diente.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/ivory.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Grapas o clamps',
            [
              {
                'type': 'text',
                'data':
                    '''Para retener la goma sobre los dientes se usan dispositivos denominados clamps o grapas. Son retenedores de acero de distintas formas para adecuarse a los diferentes tamaños de los dientes y que poseen una excelente elasticidad. Están constituidos por dos ramos horizontales o bocados, unidos entre sí por un arco que salva la estancia entre el cuello y la cara triturante. Los ramos horizontales en su borde interno guardan relación con el cuello dentario lo cual varía de acuerdo al diente.
Las de premolares son las de menor tamaño. Poseen un solo arco y puede o no tener aletas. Los clamps con aletas poseen cuatro aletas en total: dos mesiales y dos que miran a las caras libres. Todos poseen dos agujeros. 
Las de molares: Son las de mayor tamaño. Poseen un solo arco y pueden o no tener aletas. Los clamps con aletas poseen cuatro aletas en total: dos mesiales y dos que miran a las caras libres. Todos poseen dos agujeros. En el caso de los molares superiores el borde interno de los bocados posee dos concavidades por vestibular que guarda relación con la anatomía de este diente y en los inferiores posee dos de cada lado.
''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/grapas.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Cuñas de Madera',
            [
              {
                'type': 'text',
                'data':
                    '''Son preferibles a las de plástico porque tienen un efecto mixto. Tienen la capacidad de absorber la humedad aumentando su espesor. la base de la cuña debe colocarse quedando paralela a la papila. En el sector posterior se coloca en sentido linguo-vestibular, al contrario del sector anterior.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/cuñasmadera.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Cuñas de Plástico',
            [
              {
                'type': 'text',
                'data':
                    '''La base de la cuña debe colocarse quedando paralela a la papila. En el sector posterior se coloca en sentido linguo-vestibular, al contrario del sector anterior.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/cuñasplastico.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Eyectores de saliva',
            [
              {
                'type': 'text',
                'data':
                    '''Dispositivo adaptado a la salivera de la unidad dental, que absorbe por vacío la saliva y líquidos contenidos en la cavidad bucal. Existen aspiradores de distintos tamaños y materiales. Actualmente se utilizan los desechables que son constituidos de materiales plásticos que tienen por dentro una guía metálica que permite dar la forma adecuada para que se adapten a la anatomía individual de cada paciente. Antiguamente se utilizaban los metálicos que admiten ser esterilizados y vueltos a utilizar.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/eyectores.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Hilo Dental',
            [
              {
                'type': 'text',
                'data':
                    '''Este ayuda a pasar los elementos del dique de goma que van ubicados entre los dientes y además permiten efectuar una ligadura con un nudo de cirujano alrededor del cuello del diente para mantener la goma del dique en los casos que tienen tendencia a escaparse o salirse de su sitio.''',
              },
              {
                'type': 'image',
                'data': 'assets/aislamientoabsoluto/hilod.jpg',
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
