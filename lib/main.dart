import 'package:flutter/material.dart';

import 'LogoScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shop',
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        body: MyLogo(),
      ),
    );
  }
}
