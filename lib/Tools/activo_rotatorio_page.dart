import 'package:flutter/material.dart';

class ActivoRotatorioPage extends StatelessWidget {
  const ActivoRotatorioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Activo Rotatorio',
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
            'Fresas',
            [
              {
                'type': 'text',
                'data':
                    '''Consta de un tallo, una parte activa o cortante y por lo general un estrechamiento entre el tallo y la parte activa que se denomina cuello. El tallo es de acero inoxidable, mientras que la parte activa puede ser de diferentes materiales. El material utilizado en la unión entre ambas partes es una soldadura. Se utilizan para tallado de preparaciones cavitarias, remoción de caries, remoción de restauraciones, terminación de restauraciones, alisado de preparaciones protésicas, corte de puentes y coronas, cirugía de los maxilares e implantología. 

Clasificación:
Según la longitud del tallo:
• Tallo largo: para pieza de mano recta.
''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/tallocorto.jpg',
              },
              {
                'type': 'text',
                'data': '''

•Tallo corto: para contraángulos y airotor.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/tallolargo.jpg',
              },
              {
                'type': 'text',
                'data': '''

Según el equipo en el que se utilizan:
•	Para airotor: Son de tallo corto.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Airotor.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	Para convencional: Son de tallo corto y presentan en el extremo inferior una muesca.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Convencional.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	Para pieza recta o de mano: Son de tallo largo.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Pieza_Recta.jpg',
              },
              {
                'type': 'text',
                'data': '''

Según su forma:
•	Redondas: el uso principal de la fresa redonda consiste en la remoción de tejidos deficientes, semiduros o blandos de dentina cariada, para lo cual debe emplearse el tamaño más grande que la cavidad permita a baja velocidad. También se utilizan para eliminar restauraciones temporarias y para limpiar las paredes cavitarias. Pueden usarse para producir superficies cóncavas, terminar restauraciones plásticas, bruñir bordes metálicos o realizar pequeños conductos con fines de anclaje.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Fresa_redonda.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	Cono invertido: se utiliza para socavar el esmalte, por debajo del límite amelodentinario, cuando se prepara una cavidad a baja velocidad, también para retenciones o socavados con el propósito de obtener mayor retención.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Fresa_cono_invertido.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	Troncocónicas: muy útil para la conformación cavitaria, especialmente a velocidad superalta. Se aconseja especialmente la forma lisa para la preparación y terminación de cavidades con finalidad protésica. En su forma extralarga es útil para la preparación del cajón proximal o para la extensión de cavidades hacia las caras libres.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Troncoconica.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	Cilíndricas:
  o	Con extremo redondeado: útil para la apertura inicial a través de una falla del esmalte o de un punto con esmalte debilitado por caries dental.
  o	Con extremo plano: se usa para la conformación y para extender los límites de la preparación. Se emplea principalmente en restauraciones con amalgama, oro o materiales plásticos.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Cilindrica.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	De pera: además de la utilización en la preparación de cavidades a restaurar con amalgama esta fresa es muy útil para la conformación y retención de cavidades con paredes convergentes hacia la superficie oclusal, que van a ser restauradas con materiales plásticos.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Pera.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	De llama.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Llama.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	De balón de rugby.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Rugby.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	De rueda.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Rueda.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	De bala.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Bala.jpg',
              },
              {
                'type': 'text',
                'data': '''

Según su constitución o material:
•	Acero inoxidable: es un material que se fractura rápidamente y que se corroe con facilidad en las diferentes sustancias de desinfección, está muy limitado su uso a altas velocidades.
•	Carburo de tungsteno: es un material extremadamente duro y es el doble en dureza que el acero inoxidable. Es el de elección para altas velocidades por su extrema dureza y finura en el corte.
•	Diamantes: las fresas con cubrimiento de diamantes son las más agresivas en corte, prácticamente pueden cortar todo tipo de material, pero en algunas situaciones son menos efectivas que las fresas de carburo tungsteno. Generan un alto grado de calor, por tal motivo debe existir una adecuada refrigeración de la pieza de mano mediante agua.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Diamante.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	Óxido de aluminio: generalmente se utilizan para trabajos en el laboratorio, Se recomienda para pulir acrílicos, resinas y metales, pero no para desgastar porcelana por la capacidad de reaccionar con el vidrio cerámico.
Pueden ser:
•	Lisas.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Lisas.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	Dentadas: Producen estrías y rugosidades en las paredes.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Dentadas.jpg',
              },
              {
                'type': 'text',
                'data': '''

Fresas inteligentes: tienen la capacidad de discriminar la cualidad mecánica de la dentina cariada, de dureza baja y la capacidad de autodesbastarse cuando entra en contacto con la dentina sana de dureza alta.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Inteligentes.jpg',
              },
              {
                'type': 'text',
                'data': '''

Fresas para fisurotomía o de biopsia excisional: diseñadas para reconfigurar las fisuras y obtener acceso a las caries con remoción mínima del esmalte, son herramientas de corte rápido que se limitan a fosas, fisuras y ranuras y no están indicadas para el tratamiento de las lesiones cariosas mayores.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Fisurotomia.jpg',
              },
              {
                'type': 'text',
                'data': '''

Fresas para hombros: se usan para el tallado de hombros o la conformación de la pared gingival del cajón proximal.
Fresas castor de corte cruzado: diseñadas especialmente para cortar metales y remover amalgamas. La disposición de las hojas y de los dientes reduce la vibración e impide que la fresa se “entierre” en el metal a cortar.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Castor.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Mandriles',
            [
              {
                'type': 'text',
                'data': '''
Son dispositivos utilizados para montar los discos, ya sean de papel o metálicos y gomas para pulir restauraciones, cuando su fabricación así lo exige. Pueden ser de tallo largo o corto, son utilizados en pieza de mano recta o contraángulo, respectivamente.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Mandriles.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Piedras',
            [
              {
                'type': 'text',
                'data': '''
Son instrumentos que actúan desgastando la superficie sobre la que se aplican, constituidas por sustancias abrasivas que por medio de elementos aglutinantes y sometidos a la cocción en el horno son capaces de mantenerse con forma determinada. Pueden presentarse unidas al tallo y se llaman piedras montadas, pero cuando es necesario llevarlas al mandril, se les llama piedras para montar. Hay de diferentes colores, desde negras, blancas, azules y verdes que son las más comunes. Clasificación:

Según su forma:
•	Redondas.
•	Rueda.
•	Pera.
•	Cilíndrica.
•	Troncocónica.
•	Cono invertido.
•	De taza.

Según su constitución o material:
•	Diamantes: poseen bordes afilados lo que les permite una rápida abrasión de la superficie a tratar, poseen una superficie regular, lo que provoca una abrasión pareja y uniforme. Cumplen la doble función de corte y desgaste y siempre deben usarse con refrigeración.
•	Carborundo: se usan para el desgaste dentario, se emplean solamente a velocidad convencional o mediana y se recomienda su uso bajo un chorro de agua. Duran menos que las de diamante y deben ser reemplazadas con mayor frecuencia.
•	Arkansas.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Piedras.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Discos',
            [
              {
                'type': 'text',
                'data': '''
Son instrumentos rotatorios circulares, generalmente para ser montados, su superficie está recubierta por el abrasivo, que está dispuesto de forma determinada según su diseño. 

Clasificación:
Según su superficie:
•	Planos.
•	Cóncavo.
•	Convexos.
•	Biconvexos.

Pueden ser:
•	Metálicos o rígidos: están recubiertos por un solo lado por un abrasivo, algunos poseen el abrasivo en el borde y se utilizan para cortar, los actuales lo tiene de forma espiral que deja sobre su superficie unos canales sin abrasivo por los cuales fluye libremente el agua proveniente de la refrigeración, tienen diferentes tamaños, son esterilizables y se pueden usar hasta 40 veces. Pueden ser de:
  o	Carborundo.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Carborundum.jpg',
              },
              {
                'type': 'text',
                'data': '''

  o	Diamantes: estos se usan para realizar cortes y desgastes del esmalte. 
''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Disco_diamante.jpg',
              },
              {
                'type': 'text',
                'data': '''

•	Flexibles: sobre base de plástico, papel o tela impermeabilizada, de varios tamaños con un orifico central para ser montados en mandriles, presentan una extensa gama de abrasivos, de granos gruesos, medianos, finos y extrafinos que permiten pulir y terminar una superficie hasta lograr el brillo final. Hay diferentes tipos de discos flexibles, entre ellos están:
  o	Papel abrasivo (flexible)''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Disco_papel_abrasivo.jpg',
              },
              {
                'type': 'text',
                'data': '''

  o	Goma abrasivo (flexible): para pulidos de amalgama. 
''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Discos_goma_abrasivo.jpg',
              },
              {
                'type': 'text',
                'data': '''

  o	Óxido de aluminio (flexible): para pulidos de resinas adhesivas compuestas. 
''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Oxido_aluminio.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Cepillos',
            [
              {
                'type': 'text',
                'data': '''
Pueden ser de copa y rueda. Se utilizan para ayudar a la profilaxis, retirando la placa y restos de alimentos adosados en la superficie dentinarias. También su utilizan para el pulido.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Cepillos.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Gomas',
            [
              {
                'type': 'text',
                'data': '''
Tienen una base de goma sintética y se presentan de diversas formas. Están impregnadas con abrasivos de grado variable. Se utilizan para pulir las impurezas de las obturaciones y pulido de las superficies dentinarias. Provocan mucho calor friccional y deben usarse a intervalos cortos, con presión muy leve o bajo refrigeración. Hay diferentes tipos de gomas abrasivas.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Gomas.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Ruedas',
            [
              {
                'type': 'text',
                'data': '''
Son instrumentos rotatorios que su parte activa o cabeza recuerda la forma de una rueda y es aplanada y con cuchillas que le permiten realizar cortes retentivos muy amplios. Pueden ser de diferente grosor y diámetro. Poseen un orificio central para ser montadas en un mandril, otras ya vienen montadas rígidamente sobre un eje metálico. Su uso ha disminuido pues al usarlas en alta velocidad solo pueden emplearse en lugares de fácil acceso, además, causan vibraciones muy desagradables que el paciente no tolera.''',
              },
              {
                'type': 'image',
                'data': 'assets/activorotatorio/Ruedas.jpg',
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
