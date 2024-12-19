import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String imageUrl;
  final String tag;

  const SecondScreen({super.key, required this.imageUrl, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Detail"),
        centerTitle: true,
      ),
      body: Center(
        child: Hero(
          tag: tag,
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}
