import 'package:flutter/material.dart';

class mm extends StatefulWidget {
  mm({Key? key}) : super(key: key);

  @override
  State<mm> createState() => _mmState();
}

class _mmState extends State<mm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Container(),
    );
  }
}