import 'package:flutter/material.dart';
import 'package:res';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: const Text('This is Home tyoe Desktop'),
        table:Text('This is home type Teblet'),
        mobile: Text('This s Home Mobole')

        ),
      
      );
  }
}

class ScreenTypeLayout {
}