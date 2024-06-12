import 'package:flutter/material.dart';

class SeparacionMatricesPage extends StatelessWidget {
  const SeparacionMatricesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'Matrices',
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
            'Matriz y Portamatriz combinada Sistema Supermat Hawe Neos',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es comercial. Según el material son metálicas, estos logran un mejor contorno y ajuste y permiten un buen cierre marginal, no se deforman al colocar la cuña, pero no permite el paso de la luz durante la polimerización. Según las superficies que abarcan es circunferencial porque rodean todo el diente.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/1.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Matriz y Portamatriz Tofflemire',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es comercial. Según el material pueden ser metálicas, plásticas o transparentes, las metálicas logran un mejor contorno y ajuste y permiten un buen cierre marginal, no se deforman al colocar la cuña, pero no permite el paso de la luz durante la polimerización, las plásticas o transparentes son convenientes para restauraciones con resinas compuestas ya que permiten el paso de luz a través de ellas, permiten un mejor acabado por su lisura, se sujetan con cuñas, pero no se pueden contornear. Según las superficies que abarcan es circunferenciales porque rodean todo el diente.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/2.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Portamatriz Ziqueland',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es comercial. Según el material son metálicas, estos logran un mejor contorno y ajuste y permiten un buen cierre marginal, no se deforman al colocar la cuña, pero no permite el paso de la luz durante la polimerización. Según las superficies que abarcan es circunferenciales porque rodean todo el diente.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/3.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Matriz y Portamatriz cervical plástica para clase V',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es comercial. Según el material pueden ser plásticas o transparentes, estas son convenientes para restauraciones con resina compuesta y permiten el paso de luz a través de ellos. Permiten un mejor acabado por su lisura, se sujetan con cuñas, pero no se pueden contornear. Según las superficies que abarcan es parcial o seccional porque se utiliza para restaurar una sola cara proximal.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/4.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Matriz Hawe Lucifix',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es comercial. Según el material pueden ser plásticas o transparentes, estas son convenientes para restauraciones con resina compuesta y permiten el paso de luz a través de ellos. Permiten un mejor acabado por su lisura, se sujetan con cuñas, pero no se pueden contornear. Según las superficies que abarcan es circunferenciales porque rodean todo el diente.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/5.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Portamatriz desechable con matriz metálica',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es comercial. Según el material son metálicas, estos logran un mejor contorno y ajuste y permiten un buen cierre marginal, no se deforman al colocar la cuña, pero no permite el paso de la luz durante la polimerización. Según las superficies que abarcan es circunferenciales porque rodean todo el diente.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/6.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Matriz universal',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es individual, estos son trozos de cinta plástica o metálica que se recortan y se adaptan al espacio existente, se sujetan por gingival con una cuña. Según el material son metálicas, estos logran un mejor contorno y ajuste y permiten un buen cierre marginal, no se deforman al colocar la cuña, pero no permite el paso de la luz durante la polimerización. Según las superficies que abarcan es parcial o seccional porque se utiliza para restaurar una sola cara proximal.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/7.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Bandas de celuloide',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es individual, estos son trozos de cinta plástica que se recortan y se adaptan al espacio existente, se sujetan por gingival con una cuña. Según el material pueden ser plásticas o transparentes, estas son convenientes para restauraciones con resina compuesta y permiten el paso de luz a través de ellos. Permiten un mejor acabado por su lisura, se sujetan con cuñas, pero no se pueden contornear. Según las superficies que abarcan es parcial o seccional porque se utiliza para restaurar una sola cara proximal.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/8.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Celofán',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es individual, estos son trozos de cinta plástica que se recortan y se adaptan al espacio existente, se sujetan por gingival con una cuña. Según el material pueden ser plásticas o transparentes, estas son convenientes para restauraciones con resina compuesta y permiten el paso de luz a través de ellos. Permiten un mejor acabado por su lisura, se sujetan con cuñas, pero no se pueden contornear. Según las superficies que abarcan es parcial o seccional porque se utiliza para restaurar una sola cara proximal.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/9.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Matriz metálica',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es individual, estos son trozos de cinta metálica que se recortan y se adaptan al espacio existente, se sujetan por gingival con una cuña. Según el material son metálicas, estos logran un mejor contorno y ajuste y permiten un buen cierre marginal, no se deforman al colocar la cuña, pero no permite el paso de la luz durante la polimerización. Según las superficies que abarcan es parcial o seccional porque se utiliza para restaurar una sola cara proximal.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/10.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Portamatriz desechable con matriz plástica',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es comercial. Según el material pueden ser plásticas o transparentes, estas son convenientes para restauraciones con resina compuesta y permiten el paso de luz a través de ellos. Permiten un mejor acabado por su lisura, se sujetan con cuñas, pero no se pueden contornear. Según las superficies que abarcan es circunferenciales porque rodean todo el diente.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/11.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Matrices para ángulos o coronas preconformadas plásticas',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es comercial. Según el material es plástica o transparente, estas son convenientes para restauraciones con resina compuesta y permiten el paso de luz a través de ellos. Permiten un mejor acabado por su lisura. Según las superficies que abarcan es circunferencial porque rodean todo el diente.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/12.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Matrices para ángulos o coronas preconformadas metálicas',
            [
              {
                'type': 'text',
                'data':
                    '''Según su construcción es comercial. Según el material son metálicas, estos logran un mejor contorno y ajuste y permiten un buen cierre marginal, no se deforman al colocar la cuña, pero no permite el paso de la luz durante la polimerización. Según las superficies que abarcan es circunferenciales porque rodean todo el diente.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/13.jpg',
              },
            ],
          ),
          _buildListItem(
            context,
            'Anillos dentales',
            [
              {
                'type': 'text',
                'data':
                    '''Es un anillo metálico de acero inoxidable que en sus extremos presenta unas puntas de silicona proporcionando una separación adecuada entre los dientes, mantiene las matrices seguras en su posición, facilita la colocación del material de restauración logrando una relación de contacto más confiable, seguro y anatómicamente correcto impidiendo desbordamientos del material de obturación.''',
              },
              {
                'type': 'image',
                'data': 'assets/separacionmatrices/14.jpg',
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
