import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:odontokit/Tools/ortodoncia_page.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:glowstone/glowstone.dart';

// Importa tus páginas y widgets personalizados
import 'Tools/complementario_page.dart';
import 'Tools/set_clasificacion_page.dart';
import 'about_page.dart';
import 'Tools/activo_manual_page.dart';
import 'Tools/activo_rotatorio_page.dart';
import 'Tools/separacion_matrices_page.dart';
import 'Tools/separacion_page.dart';
import 'Tools/aislamientoabsoluto_page.dart';
import 'Tools/aislamientoquimico_page.dart';
import 'Tools/aislamientorelativo_page.dart';
import 'Tools/amalgama_page.dart';
import 'Tools/endodoncia_page.dart';
import 'Tools/basesintermedias_page.dart';
import 'Tools/under_construction_page.dart';

late String appVersion; // Variable global para guardar la versión de la app

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Obtiene la versión de la aplicación
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  appVersion = packageInfo.version;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OdontoKit',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: const IconThemeData(color: Colors.blueGrey),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Configurar la animación
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);

    // Iniciar la animación
    _controller.forward();

    // Después de que la animación haya terminado, navegar a la página principal
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Glowstone(
        radius: 50,
        velocity: 1,
        color: Colors.blueGrey.withOpacity(0.2),
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120, // Tamaño del cuadrado contenedor
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: Colors.blueGrey, width: 1), // Marco
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Utiliza TypingAnimatedTextKit para animar el texto
                const SizedBox(
                  height: 51,
                  width: 130,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Text(
                        'OdontoKit',
                      style: TextStyle(
                        fontFamily: 'Vibur',
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                  ],
                      ),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Tool> allTools = [
    Tool(
      name: 'Set de Clasificación',
      description:
          'Kit básico para la exploración oral, que estará contigo en todos los tratamientos.',
      headerImageAsset: 'assets/setclasificacion/set_clasificacion_header.jpg',
      iconImageAsset: 'assets/setclasificacion/set_clasificacion_icon.jpg',
      page: const SetClasificacionPage(),
    ),
    Tool(
      name: 'Complementario',
      description:
          'Diseñado para ser tu aliado en el cuidado de la salud bucodental de tus pacientes',
      headerImageAsset: 'assets/complementario/complementario_header.jpg',
      iconImageAsset: 'assets/complementario/complementario_icon.jpg',
      page: const ComplementarioPage(),
    ),
    Tool(
      name: 'Activo manual',
      description:
          'Utilizados desde hace años para abrir, extender, alisar, biselar y terminar preparaciones dentales.',
      headerImageAsset:
          'assets/activomanualocortantesdemano/cortantesdemano_header.jpg',
      iconImageAsset:
          'assets/activomanualocortantesdemano/activomanual_icon.jpg',
      page: const ActivoManualPage(),
    ),
    Tool(
      name: 'Activo Rotatorio',
      description:
          'Instrumentos que colocados en una pieza eléctrica o neumática realizan su función.',
      headerImageAsset: 'assets/activorotatorio/activorotatorio_header.jpg',
      iconImageAsset: 'assets/activorotatorio/activorotatorio_icon.jpg',
      page: const ActivoRotatorioPage(),
    ),
    Tool(
      name: 'Separación',
      description:
          'Facilita el examen, la preparación cavitaria, la instrumentación y la restauración.',
      headerImageAsset: 'assets/separacion/separacion_header.jpg',
      iconImageAsset: 'assets/separacion/separacion_icon.jpg',
      page: const SeparacionPage(),
    ),
    Tool(
      name: 'Matrices',
      description:
          'Se utilizan para el restablecimiento de la relación de contacto de dientes vecinos.',
      headerImageAsset:
          'assets/separacionmatrices/separacionmatrices_header.jpg',
      iconImageAsset: 'assets/separacionmatrices/separacionmatrices-icon.jpg',
      page: const SeparacionMatricesPage(),
    ),
    Tool(
      name: 'Aislamiento Químico',
      description:
          'Fármacos que aminoran durante un lapso de tiempo la acción secretora de la glándulas.',
      headerImageAsset:
          'assets/aislamientoquimico/aislamientoquimico_header.jpg',
      iconImageAsset: 'assets/aislamientoquimico/aislamientoquimico-icon.jpg',
      page: const AislamientoQuimicoPage(),
    ),
    Tool(
      name: 'Aislamiento Relativo',
      description:
          'No permiten una asepsia completa pero facilitan la exclusión de la humedad y proporcionan comodidad.',
      headerImageAsset:
          'assets/aislamientorelativo/aislamientorelativo_header.jpg',
      iconImageAsset: 'assets/aislamientorelativo/aislamientorelativo-icon.jpg',
      page: const AislamientoRelativoPage(),
    ),
    Tool(
      name: 'Aislamiento Absoluto',
      description:
          'Garantiza la bioseguridad y la calidad de los procedimientos restaurativos y endodónticos.',
      headerImageAsset:
          'assets/aislamientoabsoluto/aislamientoabsoluto_header.jpg',
      iconImageAsset: 'assets/aislamientoabsoluto/aislamientoabsoluto-icon.jpg',
      page: const AislamientoAbsolutoPage(),
    ),
    Tool(
      name: 'Amalgama',
      description:
          'Mezcla de mercurio, plata, cobre, estaño y zinc que se utilizan como material restaurador.',
      headerImageAsset: 'assets/amalgama/amalgama_header.jpg',
      iconImageAsset: 'assets/amalgama/amalgama-icon.jpg',
      page: const AmalgamaPage(),
    ),
    Tool(
      name: 'Bases intermedias, pastas y resinas',
      description:
          'Instrumentales que se utilizan para usar y preparar distintos materiales dentales.',
      headerImageAsset: 'assets/basesintermedias/resinas_header.jpg',
      iconImageAsset: 'assets/basesintermedias/resinas-icon.jpg',
      page: const BasesIntermediasPage(),
    ),
    Tool(
      name: 'Endodoncia',
      description:
          'Herramientas que se utilizan en los tratamientos pulporradiculares.',
      headerImageAsset: 'assets/endodoncia/endodoncia_header.jpg',
      iconImageAsset: 'assets/endodoncia/endodoncia-icon.jpg',
      page: const EndodonciaPage(),
    ),
    Tool(
      name: 'Exodoncia',
      description:
          'Intervención quirúrgica basada en la extracción de una pieza dental de la cavidad bucal.',
      headerImageAsset: 'assets/en_construccion/nobanner.jpeg',
      iconImageAsset: 'assets/en_construccion/no.png',
      page: const UnderConstructionPage(),
    ),
    Tool(
      name: 'Mesa de Mayo',
      description:
          'Donde se coloca todo el instrumental quirúrgico que se necesita para una operación.',
      headerImageAsset: 'assets/en_construccion/nobanner.jpeg',
      iconImageAsset: 'assets/en_construccion/no.png',
      page: const UnderConstructionPage(),
    ),
    Tool(
      name: 'Tartrectomías',
      description:
          'Para la eliminación de cálculo o sarro dental alrededor de los dientes.',
      headerImageAsset: 'assets/en_construccion/nobanner.jpeg',
      iconImageAsset: 'assets/en_construccion/no.png',
      page: const UnderConstructionPage(),
    ),
    Tool(
      name: 'Prótesis',
      description:
          'Herramientas que se utilizan para la rehabilitación protésica.',
      headerImageAsset: 'assets/en_construccion/nobanner.jpeg',
      iconImageAsset: 'assets/en_construccion/no.png',
      page: const UnderConstructionPage(),
    ),
    Tool(
      name: 'Ortodoncia',
      description:
          'Para la realización de tratamientos de ortodoncia se utilizan distintos instrumentales.',
      headerImageAsset: 'assets/ortodoncia/ortodoncia-banner.jpg',
      iconImageAsset: 'assets/ortodoncia/ortodoncia-icon.png',
      page: const OrtodonciaPage(),
    ),
    // Agrega más herramientas con sus rutas de imágenes locales
  ];

  HomePage({super.key});

  void navigateToAboutPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AboutPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Tool> gridTools = List.from(allTools);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        title: const Text(
          'OdontoKit',
          style: TextStyle(
            fontFamily: 'Vibur',
            color: Colors.blueGrey,
            fontWeight: FontWeight.normal,
            fontSize: 32,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            color: Colors.blueGrey,
            iconSize: 30,
            onPressed: () {
              showSearch(
                context: context,
                delegate: ToolSearch(allTools),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.info_outlined),
            color: Colors.blueGrey,
            iconSize: 30,
            onPressed: () {
              navigateToAboutPage(context);
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 1),
          SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: FeaturedToolsCarousel(allTools: allTools),
            ),
          ),
          const SizedBox(height: 1),
          // Sección de todas las herramientas
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: gridTools.length,
              itemBuilder: (BuildContext context, int index) {
                final tool = gridTools[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => tool.page,
                      ),
                    );
                  },
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: 1,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      child: Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                tool.iconImageAsset,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 8.0,
                              left: 8.0,
                              right: 8.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.blueGrey.withOpacity(0.6),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4.0,
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  tool.name,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black, blurRadius: 2.0),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//barra de busqueda
class ToolSearch extends SearchDelegate<String> {
  final List<Tool> allTools;

  ToolSearch(this.allTools);

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: Colors.transparent,
      primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.blueGrey),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal:
                16.0), // Ajustar el relleno interno del campo de búsqueda
        border: OutlineInputBorder(
          borderSide:
              BorderSide.none, // Eliminar el borde del campo de búsqueda
          borderRadius: BorderRadius.circular(20.0), // Bordes redondeados
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Colors.blueGrey), // Borde enfocado en azulGrey
          borderRadius: BorderRadius.circular(20.0), // Bordes redondeados
        ),
        filled: true,
        fillColor: Colors.blueGrey
            .withOpacity(0.1), // Color de fondo del campo de búsqueda
        hintStyle: TextStyle(
            color: Colors.blueGrey
                .withOpacity(0.6)), // Estilo del texto de sugerencia
      ),
      textTheme: theme.textTheme.copyWith(
        titleLarge: const TextStyle(
            color: Colors.blueGrey), // Texto del appbar en blueGrey
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        color: Colors.blueGrey,
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      color: Colors.blueGrey,
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<Tool> filteredTools = allTools
        .where((tool) => tool.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: filteredTools.length,
      itemBuilder: (BuildContext context, int index) {
        final tool = filteredTools[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => tool.page,
              ),
            );
          },
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: 1,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        tool.iconImageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 8.0,
                      right: 8.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.blueGrey.withOpacity(0.6),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 8.0,
                        ),
                        child: Text(
                          tool.name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(color: Colors.black, blurRadius: 2.0),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<Tool> suggestionList = query.isEmpty
        ? []
        : allTools
            .where(
                (tool) => tool.name.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: suggestionList.length,
      itemBuilder: (BuildContext context, int index) {
        final tool = suggestionList[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => tool.page,
              ),
            );
          },
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: 1,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        tool.iconImageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 8.0,
                      right: 8.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.blueGrey.withOpacity(0.6),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 8.0,
                        ),
                        child: Text(
                          tool.name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(color: Colors.black, blurRadius: 2.0),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

//carrusel
class FeaturedToolsCarousel extends StatefulWidget {
  final List<Tool> allTools;
  const FeaturedToolsCarousel({super.key, required this.allTools});

  @override
  // ignore: library_private_types_in_public_api
  _FeaturedToolsCarouselState createState() => _FeaturedToolsCarouselState();
}

class _FeaturedToolsCarouselState extends State<FeaturedToolsCarousel> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    // Inicia el temporizador de desplazamiento automático
    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_pageController.page == widget.allTools.length - 1) {
        _pageController.animateToPage(0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      } else {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: widget.allTools.length,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          itemBuilder: (BuildContext context, int index) {
            final tool = widget.allTools[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tool.page,
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: const EdgeInsets.all(15),
                child: Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          tool.headerImageAsset,
                          fit: BoxFit.cover,
                        ),
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 0.5),
                          child: Container(color: Colors.transparent),
                        ),
                        Positioned(
                          bottom: 16.0,
                          left: 16.0,
                          right: 16.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tool.name,
                                style: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black, blurRadius: 2.0),
                                  ],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                tool.description,
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black, blurRadius: 2.0),
                                  ],
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              widget.allTools.length,
              (int index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 8.0,
                  width: (index == _currentPage) ? 24.0 : 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    color:
                        (index == _currentPage) ? Colors.blueGrey : Colors.grey,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class Tool {
  final String name;
  final String description;
  final String headerImageAsset;
  final String iconImageAsset;
  final Widget page;

  Tool({
    required this.name,
    required this.description,
    required this.headerImageAsset,
    required this.iconImageAsset,
    required this.page,
  });
}
