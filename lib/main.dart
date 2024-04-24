import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'map.dart';
import 'schedule.dart';
import 'liked.dart';
import 'package:flutter_config/flutter_config.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 100, 201, 125)),
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
          backgroundColor: Colors.green[100],
          title: const Text(
            'COMPÓS 2024',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          leadingWidth: 100,
          centerTitle: true,
          toolbarHeight: 18,
          toolbarOpacity: 0.9,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset('lib/assets/banner.png'),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: const Text(
                'O 33º Encontro Anual da Compós acontece entre 23 e 26 de julho de 2024 no IACS (Instituto de Arte e Comunicação Social) da UFF, em Niterói, Rio de Janeiro. Trata-se de um dos mais tradicionais eventos da área da Comunicação, trazendo pesquisadores do país inteiro reunidos em 24 Grupos Temáticos que, durante dois dias, debatem os trabalhos apresentados. O objetivo é ser um espaço de troca aprofundado, contribuindo para a circulação e intercâmbio do conhecimento, além de induzir e fomentar a criação de importantes redes de pesquisa.',
              ),
              color: Colors.green[100],
            ),
            Container(
              child: Image.asset('lib/assets/Local.jpg'),
              width: 200,
              height: 200,
            ),
            Container(
              child: Text(
                'Datas Importantes',
                style: TextStyle(decorationThickness: 20, fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: 110,
                    width: 110,
                  ),
                  Column(
                    children: [
                      Icon(Icons.calendar_month),
                      Text(
                        'Início das Submissões',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text('15/12/2023'),
                    ],
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: 110,
                    width: 110,
                  ),
                  Column(
                    children: [
                      Icon(Icons.calendar_month),
                      Text(
                        'Fim das Submissões',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text('18/03/2024'),
                    ],
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: 110,
                    width: 110,
                  ),
                  Column(
                    children: [
                      Icon(Icons.calendar_month),
                      Text(
                        'Divulgação dos Trabalhos',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text('02/05/2024'),
                    ],
                  ),
                ],
              ),
            ]
            ),
          
          ]
          ),
        ),
          bottomNavigationBar: BottomAppBar(
              height: 50,
              color: Colors.green[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.home)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MapSample()),
                        );
                      },
                      child: Icon(Icons.location_on)),
                  ElevatedButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Schedule()),
                        );
                      }, 
                  child: Icon(Icons.calendar_month_sharp)),
                  ElevatedButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Liked()),
                        );
                      }, 
                  child: Icon(Icons.link_outlined)),
                ],
              ),
            )
        );
  }
}
