import 'package:flutter/material.dart';
import 'package:myweb/models/user_model.dart';

class MyService extends StatefulWidget {
  final UserModel userModel;
  const MyService({super.key, required this.userModel});

  @override
  State<MyService> createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  late UserModel model;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = widget.userModel;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Welcome ${model.name}'
      ),
   );
  }
}
