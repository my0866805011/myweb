import 'package:flutter/material.dart';
import 'package:myweb/state/home.dart';
import 'package:myweb/state/show_product.dart';

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context) => Home(),
  '/ShowProduct':(BuildContext context) => ShowProduct(),
};
String initialRoute = '/home';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: map,
      initialRoute: initialRoute,
    );
  }
}
