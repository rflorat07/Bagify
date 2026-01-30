import 'package:flutter/material.dart';

class BagifyProfileScreen extends StatelessWidget {
  const BagifyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bagify Profile'),
      ),
      body: const Center(
        child: Text('Welcome to Bagify'),
      ),
    );
  }
}
