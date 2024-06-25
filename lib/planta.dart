import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 253, 165, 165),
          title: const Text(
            '',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          leadingWidth: 100,
          centerTitle: true,
          toolbarHeight: 18,
          toolbarOpacity: 0.9,
        ),
        body: Center(


        )
      );
    
  }
}