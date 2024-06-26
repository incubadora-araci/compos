import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:compos_uff_app/planta.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'cronograma.dart';
import 'main.dart';
import 'map.dart';


class Schedule extends StatelessWidget {
  const Schedule({super.key});

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
                  child: Image.asset('lib/assets/composterreo.png'),
                ),
                Container(
                  child: Image.asset('lib/assets/composandar.png'),
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