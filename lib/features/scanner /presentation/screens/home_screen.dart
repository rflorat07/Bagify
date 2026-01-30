import 'package:flutter/material.dart';

class BagifyScannerScreen extends StatelessWidget {
  const BagifyScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bagify Scanner'),
      ),
      body: const Center(
        child: Text('Welcome to Bagify'),
      ),
    );
  }
}
