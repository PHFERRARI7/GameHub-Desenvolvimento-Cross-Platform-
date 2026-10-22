import 'package:flutter/material.dart';
import 'package:gamehub/screens/home_screen.dart';

void main () {
  runApp(GameHubApp());  
}

class GameHubApp extends StatelessWidget {
  const GameHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GameHub",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}