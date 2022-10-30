import 'package:flutter/material.dart';
import 'package:myweb/state/navigator.dart';


class ShowProduct extends StatefulWidget {
  const ShowProduct({super.key});

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:NavigatorLayout(),  
    );
  }
}
