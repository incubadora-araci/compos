import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Liked extends StatelessWidget {
  const Liked({super.key});

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
        body: Center()
      );
    //aaaa
  }
}