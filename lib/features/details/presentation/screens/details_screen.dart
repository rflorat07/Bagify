import 'package:flutter/material.dart';

class BagifyDetailsScreen extends StatelessWidget {
  const BagifyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bagify Details'),
      ),
      body: const Center(
        child: Text('Welcome to Bagify'),
      ),
    );
  }
}
