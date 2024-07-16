import 'package:compos_uff_app/planta.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';


import 'main.dart';
import 'map.dart';

class Liked extends StatelessWidget {
  const Liked({super.key});

  Future<void> _launchUrl(String stringUrl) async {
    final Uri url = Uri.parse(stringUrl);

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
            ),
            Container(
              child: Image.asset('lib/assets/printcro01.png'),
            ),
            Container(
              child: Image.asset('lib/assets/printcro02.png'),
            ),
            Container(
              child: Image.asset('lib/assets/gt1.png'),
            ),

            InkWell(
              child: Image.asset('lib/assets/gt2.png'
              ),
              onTap: () {
                _launchUrl("https://compos2024.softaliza.com.br/programacao-dos-gts-2/");
              },
            ),

            InkWell(
              child: Image.asset('lib/assets/gt3.png'
              ),
              onTap: () {
                _launchUrl("https://compos2024.softaliza.com.br/programacao-dos-gts-2/");
              },
            ),

            Container(
              child: Image.asset('lib/assets/gt4.png'),
            )
          ]
        ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 50,
          color: Color.fromARGB(255, 253, 165, 165),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage(title: 'COMPÓS 2024',)),
                    );
                  },
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
        )
      );
  }
}