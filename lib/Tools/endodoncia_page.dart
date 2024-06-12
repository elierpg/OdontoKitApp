import 'package:flutter/material.dart';

class EndodonciaPage extends StatelessWidget {
  const EndodonciaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Endodoncia',
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
            'Tiranervios o extractor pulpar',
            [
              {
                'type': 'text',
                'data':
                    '''Presenta un mango, un vástago y la parte activa. El mango del instrumento tiene diferente morfologías y superficie estriada para permitir una mejor presión digital, puede ser metálico, plásticas o de siliconas y están codificados con colores, un símbolo y una numeración permitiendo su identificación y fácil reconocimiento, el número y color indica el calibre y el símbolo la sección transversal de la parte activa del instrumento. El vástago puede ser liso o con marcas de longitud. La parte activa del instrumento presenta una superficie de corte activa que presenta diferentes formas. Son un elemento de extirpación del nervio, no un elemento para ensanchar los canales. Está formado a partir de una punta de metal con forma cónica a la que se le levantan unas escamas o barbas metálicas por fuera de su eje longitudinal. De esta forma, el tiranervios entra limpiamente en el canal, pero al salir se engancha con el tejido pulpar, tirando de él y extrayéndole del canal. Para este uso, se utiliza un tiranervios más grueso que entre de forma holgada en el canal, ya que si no aumenta de forma considerable el riesgo de fractura de éste. Son conocidos también como sondas barbadas y deben ser de un solo uso.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/tiranervios.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Limas',
            [
              {
                'type': 'text',
                'data':
                    '''Presenta un mango, un vástago y la parte activa. El mango del instrumento tiene diferente morfologías y superficie estriada para permitir una mejor presión digital, puede ser metálico, plásticas o de siliconas y están codificados con colores, un símbolo y una numeración permitiendo su identificación y fácil reconocimiento, el número y color indica el calibre y el símbolo la sección transversal de la parte activa del instrumento. La numeración va del 15 hasta el 60, con saltos de cinco hasta el tamaño 60 y luego saltos de 10 hasta el tamaño 80. La designación por color está basado en seis colores que van del color blanco, amarillo, rojo, azul, verde y negro. El vástago puede ser liso o con marcas de longitud. La parte activa del instrumento presenta una superficie de corte activa que presenta diferentes formas. Existen diferentes tipos de limas dentales para endodoncia. Con la introducción y el uso de motor de endodoncia, intervienen las limas rotatorias. Lo más reciente en la tecnología endodóntica son los instrumentos de níquel-titanio, ideados para facilitar la instrumentación de conductos curvos. Los instrumentos de níquel-titanio son conocidos por ser superflexibles y se doblan mucho más que los instrumentos de acero inoxidable antes de exceder su límite elástico. Esta flexibilidad es una propiedad de gran importancia porque facilita la preparación de los conductos radiculares curvos minimizando los errores de procedimiento, generalmente asociados con los instrumentos de acero inoxidable, sobre todo los de mayor grosor. Los estudios recientes demuestran que con los instrumentos de níquel-titanio se obtienen preparaciones endodónticas más centradas, con un mínimo de deformación y una forma de llama más uniforme.
                    
                    - Escofinas o cola de ratón: son utilizadas como instrumentos de uso manual, cónico, en los cuales las salientes cortantes son diferentes untos. Los cortes que produce la herramienta son poco profundos y casi perpendiculares al tallo de acero. Como consecuencia, las salientes producidas son series de elevaciones ovoides o semicirculares a lo largo de la parte activa del instrumento. Se utilizan para alisar las paredes del conducto radicular.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/escofinas.jpg',
              },
              {
                'type': 'text',
                'data':
                    '''- Tipo Hedströen: Son instrumentos cuya parte activa se caracteriza por una espiral corta en forma de pequeños conos superpuestos y ligeramente inclinados, de manera que la parte cortante queda en la base de los conos. Poseen una excelente capacidad de corte, son muy útiles para la regularización de las paredes de los conductos y la remoción de los residuos.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/hedstroen.jpg',
              },
              {
                'type': 'text',
                'data':
                    '''- Tipo K File: Son instrumentos que se asemejan a los escariadores, porque presentan su parte activa como una espiral de pasos cortos. Son eficientes cuando se las utiliza con movimientos de introducción, rotación de un cuarto y de media vuelta y de tracción con presión lateral contra las paredes del conducto. No solo funcionan como ensanchadores, abriendo espacios cuando son impulsados en sentido apical, con discreta rotación, sino que también liman las paredes al ser traccionadas bajo presión contra ellas. Son útiles también para realizar la exploración de los conductos, con movimientos de penetración y oscilación. Tienen gran resistencia y buena flexibilidad, son indicados para la preparación de conductos constrictos y curvos.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/k_file.jpg',
              },
              {
                'type': 'text',
                'data':
                    '''- Tipo K-Flex: Estas limas tienen un corte transversal romboidal o en forma de diamante. Las espirales o estrías se producen por el mismo procedimiento de torcido empleado para realizar el borde cortante de las limas tipo K normales. Este nuevo diseño presenta cambios significativos en cuanto a flexibilidad y eficiencia del corte. Los bordes cortantes de las hojas altas están formados por los ángulos agudos del rombo y presentan mayor filo y eficacia cortante. Las hojas bajas alternadas formadas por los ángulos obtusos de los rombos actúan como un barrenador, proporcionando mayor área para la eliminación de mayor cantidad de residuos.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/k_flex.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Escariadores',
            [
              {
                'type': 'text',
                'data':
                    '''Se emplean para agrandar los conductos radiculares mediante movimientos de corte circular. Ejercen su acción cuando se les inserta dentro del conducto, se les hace describir un cuarto de vuelta o vuelta y media a favor de las manecillas del reloj para trabar sus hojas cortantes en la dentina, y se les retira (penetración, giro y retracción).''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/escariadores.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Léntulo',
            [
              {
                'type': 'text',
                'data':
                    '''Facilita la colocación de pastas, cementos de obturación o sellados dentro de los conductos al hacerlo rotar, diseñado con una espiral en forma de cono para evitar que entre el aire y burbujas, reduciendo así también el peligro de rotura. ''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/lentulo.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Regla milimetrada',
            [
              {
                'type': 'text',
                'data':
                    '''Se utiliza para medir la longitud de las limas, puntas de papel y puntas de gutapercha, determinan de forma fácil y rápida la longitud de trabajo. Hay de distintas formas de y materiales como las de acero inoxidable y las plásticas.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/regla.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Localizador electrónico de ápice',
            [
              {
                'type': 'text',
                'data':
                    '''Es un instrumento que han surgido recientemente, los que facilitan el trabajo del operador, pero no sustituye la radiografía, medio excelente de diagnóstico que se utiliza antes, durante y después del tratamiento endodóntico.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/localizador.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Topes de goma',
            [
              {
                'type': 'text',
                'data':
                    '''Ideados para mantener las medidas de los conductos radiculares en los instrumentos endodónticos.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/topes.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Ensanchador Gates Glidden',
            [
              {
                'type': 'text',
                'data':
                    '''Este intrumento tiene un extremo cortante corto, en forma de llama, con hojas cortantes laterales levemente espiraladas con ángulo muy inclinado respecto a la vertical. Generalmente tiene una pequeña guía no cortante en su extremo para minimizar su potencial de perforación de la superficie radicular. La cabeza cortante está conectada al vástago por un cuello fino y largo. Está numerado del 1 al 6 mediante marcas en el tallo del instrumento. Se utilizan para la ampliación y conformación de los conductos después del limado seriado y ensanchamiento con limas, en sus tercios cervical y a veces hasta el tercio medio. Los taladros Gates Glidden están diseñados con un punto débil en la parte del eje más cercana a la pieza de mano, de forma tal que el instrumento fracturado pueda ser retirado fácilmente del conducto. Se fabrican de acero inoxidable y con un largo total de 32 mm (desde la punta hasta el contrángulo miden de 18 a 19 mm) aunque también se fabrican en largos totales de 28 y 38 mm.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/Ensanchador_Gates_Glidden.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Ensanchador tipo Peso',
            [
              {
                'type': 'text',
                'data':
                    '''Tiene una parte cortante larga y ahusada con hojas de corte lateral levemente espiraladas; las hojas tienen gran angulación con respecto a la vertical. El extremo cortante está unido al vástago por un cuello corto y grueso. Se utiliza en la desobturación y preparación de conductos endodónticamente obturados, para la colocación de postes intrarradiculares. Tanto en su material, largo y diámetro, los ensanchadores Peeso siguen las especificaciones de las Gates Glidden.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/Ensanchador_tipo_Peso.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Jeringa Luer',
            [
              {
                'type': 'text',
                'data':
                    '''Se utiliza para irrigar los conductos radiculares.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/jeringaluer.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Puntas de papel absorbente',
            [
              {
                'type': 'text',
                'data':
                    '''Se utilizan para el secado del conducto antes de la obturación. Se fabrican de forma cónica con papel hidrófilo.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/puntas_papel.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Conos de gutapercha',
            [
              {
                'type': 'text',
                'data':
                    '''Es un material flexible y aislante usado para el relleno del conducto radicular. Son de fácil manipulación en introducción al conducto. Poseen radiopacidad, inalterabilidad en sus dimensiones y flexibilidad. Tiene excelentes propiedades de biocompatibilidad y físico-Químicas que aseguran un adecuado sellado radicular. Están codificados con colores y una numeración permitiendo su identificación y fácil reconocimiento, el número y color indica el calibre.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/conos_g.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Pinza portaconos',
            [
              {
                'type': 'text',
                'data':
                    '''Es el instrumento utilizado para tomar los conos con la precisión necesaria y que no se desplacen después de obtener la medida de estos cuando se van a llevar dentro del conducto. Permite coger elementos pequeños de forma segura y tomarlos con precisión. Son particularmente útiles cuando se están manipulando puntas de gutapercha, conos de papel y bolillas de algodón.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/pinza_conos.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Espaciador o condensador de obturación manual',
            [
              {
                'type': 'text',
                'data':
                    '''Son instrumentos metálicos delgados terminados en punta, ahusados, permiten abrir un espacio en un conducto durante la obturación radicular en la técnica de condensación lateral para colocar los conos accesorios de gutapercha y de esta manera lograr la obliteración total o sellado del conducto.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/espaciador_m.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Espaciador o condensador de obturación digital',
            [
              {
                'type': 'text',
                'data':
                    '''Son instrumentos metálicos delgados terminados en punta, ahusados, permiten abrir un espacio en un conducto durante la obturación radicular en la técnica de condensación lateral para colocar los conos accesorios de gutapercha y de esta manera lograr la obliteración total o sellado del conducto.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/espaciador_d.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Tijera recta pequeña',
            [
              {
                'type': 'text',
                'data':
                    '''Se utiliza para recortar la punta del cono de gutapercha durante el ajuste del cono principal, y del “penacho” de gutapercha, durante la fase final de la obturación.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/tijerarectapequeña.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Mechero',
            [
              {
                'type': 'text',
                'data':
                    '''Sirve para calentar el condensador de gutapercha o tipo Mortonson durante la fase final de la obturación.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/mechero.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Condensador vertical o de gutapercha o tipo Mortonson',
            [
              {
                'type': 'text',
                'data':
                    '''Es plano en su parte activa. Después de ser calentado, se utiliza para atacar o realizar la condensación vertical en el tercio coronal.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/condensadorvertical.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Flexobend',
            [
              {
                'type': 'text',
                'data':
                    '''Es un instrumento manual esterilizable utilizado para garantizar la precurvatura de las limas de forma segura y eficiente cuando se le está practicando tratamiento endodóntico a piezas dentales con conductos curvos y que ameritan la curvatura o doblamiento de las limas para un trabajo más adecuado, además de funcionar como una regla milimetrada convencional.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/flexobend.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Esponjero o soporte para limas',
            [
              {
                'type': 'text',
                'data':
                    '''Se utiliza para sujetar y organizar las limas durante el tratamiento endodóntico.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/esponjero.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
            ],
          ),
          _buildListItem(
            context,
            'Esterilizador de bola de vidrio',
            [
              {
                'type': 'text',
                'data':
                    '''Es un esterilizador de pequeñas dimensiones, es un aparato muy práctico y seguro diseñado en acero inoxidable, ideal para emplear con pequeños utensilios quirúrgicos, garantizando una esterilización rápida y eficaz. Se emplea para la esterilización de puntas de papel y bolillas de algodón.''',
              },
              {
                'type': 'image',
                'data': 'assets/endodoncia/esterilizador.jpg',
              },
              // Puedes agregar más elementos de texto e imagen según sea necesario
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
