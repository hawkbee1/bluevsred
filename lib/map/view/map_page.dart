import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Blue vs Red'),
      ),
      body: const Center(
        child: Text('temporary text'),
      ),
    );
  }
}
