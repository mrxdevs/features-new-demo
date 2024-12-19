import 'package:feature_app/hero_animation/hero_animation_screen.dart';
import 'package:flutter/material.dart';

import 'threejs/three_js_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HeroAnimationScreen()));
                },
                child: Text("Hero Animation")),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FlutterGame()));
                },
                child: Text("Three.js"))
          ],
        ),
      ),
    );
  }
}
