

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../authentication/login_screen.dart';
import '../global/global.dart';

class MainScreen extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: ElevatedButton(
        child: const Text(
          "Logout"
        ),
        onPressed: () {
            fAuth.signOut();
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => LoginScreen()));
        },
      ),
    );
  }


}