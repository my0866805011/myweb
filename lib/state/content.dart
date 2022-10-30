import 'package:flutter/material.dart';
import 'package:myweb/utility/my_constant.dart';

class ContentLayout extends StatelessWidget {
  const ContentLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      color: Colors.green.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text('Title 1',style: TextStyle(fontSize: 24),),
          ),
          Text(MyConstant().lorem),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text('Title 2',style: TextStyle(fontSize: 24),),
          ),
          Text(MyConstant().lorem),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text('Title 3',style: TextStyle(fontSize: 24),),
          ),
          Text(MyConstant().lorem),
      
      
        ],
      ),
    );
  }
}
