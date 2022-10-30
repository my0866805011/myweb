import 'package:flutter/material.dart';
import 'package:myweb/state/calltoaction.dart';
import 'package:myweb/state/content.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:myweb/state/navigator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
        child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 1200),
        child: ScreenTypeLayout(
          mobile: buildMobile(),
          tablet: buildDesktop(),
          // Text('table') ,
          desktop: buildDesktop(),
          watch: buildMobile(),
          // Text('watch'),
        ),
      )
      ),
    );
  }

  Widget buildMobile() => ListView(
        children: [
           NavigatorLayout(), 
          CallToActionLayout(),
          //  NavigatorLayout(), 
           ContentLayout(),
           
         ],
      );

  Widget buildDesktop() => Column(
        children: [
           NavigatorLayout(), 
           Expanded(
             child: Row(
               children: [
                 ContentLayout(),
                 CallToActionLayout(),
               ],
             ),
           ),
         ],
      );
}
