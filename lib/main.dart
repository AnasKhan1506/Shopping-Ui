import 'package:flutter/material.dart';
import 'package:shopping_store/Screens/Slider_screen/slider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "manrope"),
      debugShowCheckedModeBanner: false,
      home: SliderScreen(),
    );
  }
}
