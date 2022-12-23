import 'package:flutter/material.dart';
Future<Null> normalDialog(
   context, String title, String message)async{
  showDialog(
    context: context,
    builder: (context) => 
    SimpleDialog(title: ListTile(
      leading: Image.asset('assets/images/logo.png'),
      title: Text(title),
      subtitle: Text(message),
      ),children: [TextButton(
        onPressed: () => Navigator.pop(context), child: Text('Ok'))],
      )
    );

}