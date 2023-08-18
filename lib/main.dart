import 'package:flutter/material.dart';
import 'package:horizontal_scroll/HorizontalScroll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HorizontalScroll(),
    );
  }
}
