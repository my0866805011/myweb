import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:myweb/utility/normalDialog.dart';

class CallToActionLayout extends StatelessWidget {
  // const CallToActionLayout({super.key});

  late String user, password;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          newMethod(context),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Account',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('No Account ?'),
                  TextButton(onPressed: () {}, child: Text('create Account ?'))
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Center newMethod(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildUser(),
          buildPassword(),
          buildLogin(context),
        ],
      ),
    );
  }

  Container buildLogin(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
          onPressed: () {
            print('user = $user, password = $password');

            if ((user == null || user.isEmpty) ||
                (password == null || password.isEmpty)) {
              print(' Ihis is space');
              nomalDialog(context, 'Have Space', 'Plaese Fill Every Blank');
            } else {
              print('Ok');
              checkAuthen();
            }
          },
          child: Text('Login')),
    );
  }

  Future<Null> checkAuthen() async {
    String path =
        'https://www.57ans.com/myweb/Api/getUserWhereUser.php?isAdd=true&user=$user';
    await Dio().get(path).then((value) => print('### value = $value'));
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      width: 200,
      child: TextField(
        onChanged: (value) => password = value.trim(),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_clock_outlined),
          labelText: 'Pasword :',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      width: 200,
      child: TextField(
        onChanged: (value) => user = value.trim(),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity),
          labelText: 'User :',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}