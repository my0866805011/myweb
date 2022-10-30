import 'package:flutter/material.dart';

class NavigatorLayout extends StatelessWidget {
  const NavigatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        // color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(width: 70,
                child: Image(image: AssetImage('assets/images/logo.png')),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'A4SME.COM',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text('account information'),
                ],
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(onPressed: ()=> Navigator.
                  pushNamedAndRemoveUntil(context, '/home', 
                  (route) => false) ,
                  child: Text('Home')
                  ),
                  SizedBox(width: 30,),
                  TextButton(onPressed: ()=> Navigator.
                  pushNamedAndRemoveUntil(context, '/ShowProduct',
                  (route) => false) ,
                  child: Text('Product')
                  ),
                ],
              ),
            ],      
          ),
        ],   
      ),   
    );
  }
}
