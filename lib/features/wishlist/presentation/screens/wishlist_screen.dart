import 'package:flutter/material.dart';

class BagifyWishlistScreen extends StatelessWidget {
  const BagifyWishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bagify Wishlist'),
      ),
      body: const Center(
        child: Text('Welcome to Bagify'),
      ),
    );
  }
}
