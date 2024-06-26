import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'map.dart';
import 'planta.dart';
import 'cronograma.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COMPÓS 2024 UFF APP',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 143, 64, 64)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'COMPÓS 2024'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorWhite,
          title: Text(
            '',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 16),
            ),
          ),
          leadingWidth: 100,
          centerTitle: true,
          toolbarHeight: 2,
          toolbarOpacity: 0.9,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset('lib/assets/ComposLogoNovo.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: const Text(
                'O 33º Encontro Anual da Compós acontece entre 23 e 26 de julho de 2024 no IACS (Instituto de Arte e Comunicação Social) da UFF, em Niterói, Rio de Janeiro. Trata-se de um dos mais tradicionais eventos da área da Comunicação, trazendo pesquisadores do país inteiro reunidos em 24 Grupos Temáticos que, durante dois dias, debatem os trabalhos apresentados. O objetivo é ser um espaço de troca aprofundado, contribuindo para a circulação e intercâmbio do conhecimento, além de induzir e fomentar a criação de importantes redes de pesquisa.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20,
                color: colorBlack
                ),

              ),
              color: colorWhite,
            ),
            Stack(
              children: [
                Container(
                  child: Image.asset('lib/assets/Local.jpg'),
                  width: 500,
                  height: 300,
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.amber[50],
                  child: Text('MAC - Niterói',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ) ,
                  width: 150,
                  height: 30,
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  child: Image.asset('lib/assets/NovoIACS.jpeg'),
                  width: 500,
                  height: 300,
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.amber[50],
                  child: Text('Novo IACS - UFF',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ) ,
                  width: 200,
                  height: 30,
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  child: Image.asset('lib/assets/mapaIACS.png'),
                  width: 500,
                  height: 300,
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.amber[50],
                  child: Text('Mapa Novo IACS',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ) ,
                  width: 200,
                  height: 30,
                )
              ],
            ),
            Container(
              color: Colors.amber[50],
              child: Text('Páginas',
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ) ,
              width: 200,
              height: 30,
            )
          ]),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 50,
          color: Color.fromARGB(255, 253, 165, 165),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.home)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoogleMapPage()),
                    );
                  },
                  child: Icon(Icons.location_on)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Schedule()),
                    );
                  },
                  child: Icon(Icons.link_outlined)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Liked()),
                    );
                  },
                  child: Icon(Icons.calendar_month_sharp)),
            ],
          ),
        ));
  }
}
