import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'map.dart';
import 'planta.dart';
import 'cronograma.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'package:url_launcher/url_launcher.dart';

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

  Future<void> _launchUrl(String stringUrl) async {
    final Uri url = Uri.parse(stringUrl);

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
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
                "Sejam muito bem-vindos à COMPÓS 2024! Este ano o evento será no Instituto de Artes e Comunicação Social (UFF) da UFF, entre os dias 23 e 26 de julho de 2024. Estamos muito contentes de recebê-los no novo prédio do IACS no campus Gragoatá em Niterói. Esperamos que sejam dias intensos de partilha de estudos e pesquisas, além de trocas de experiências valiosas que vão contribuir para a nossa área de conhecimento.Neste aplicativo vocês encontram informações detalhadas sobre o encontro.Vamos juntos fazer deste encontro um marco inesquecível! - A equipe organizadora da COMPÓS 2024. ",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16,
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
            InkWell(
              onTap: () {
                _launchUrl("https://padlet.com/mariacapper107/mapa-de-restaurantes-em-niter-i-3jf0npsw59082x0o");
              },
              child: Stack(
                children: [
                  Container(
                    child: Image.asset('lib/assets/food-service4537.jpg'),
                    width: 300,
                    height: 300,
                    padding: EdgeInsets.all(20),
                  ),
                  Container(
                    color: Colors.amber[50],
                    child: Text('Mapa Gastronômico',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ) ,
                    width: 150,
                    height: 30,
                  )
                ],
              ),
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
                  child: Icon(Icons.account_balance_rounded)),
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
