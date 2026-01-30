import 'package:flutter/material.dart';

class BagifyShoppingScreen extends StatelessWidget {
  const BagifyShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bagify Shopping'),
      ),
      body: const Center(
        child: Text('Welcome to Bagify'),
      ),
    );
  }
}
