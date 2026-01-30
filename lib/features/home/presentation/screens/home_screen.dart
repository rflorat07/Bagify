import 'package:flutter/material.dart';

class BagifyHomeScreen extends StatelessWidget {
  const BagifyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bagify Home'),
      ),
      body: const Center(
        child: Text('Welcome to Bagify'),
      ),
    );
  }
}
