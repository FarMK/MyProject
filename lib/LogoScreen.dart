import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

import 'MainPage.dart';
import 'main.dart';

class MyLogo extends StatefulWidget {
  @override
  _MyLogoState createState() => _MyLogoState();
}

class _MyLogoState extends State {
  @override
  void initState() {
    super.initState();
    _waitforState().then(
      (status) {
        if (status) {
          Navigator.pushReplacement(
              context, new MaterialPageRoute(builder: (context) => MainPage()));
        }
      },
    );
  }

  Future<bool> _waitforState() async {
    await Future.delayed(Duration(milliseconds: 5000));

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        alignment: Alignment.center,
        child: Shimmer.fromColors(
          period: Duration(milliseconds: 1500),
          baseColor: Color.fromRGBO(50, 177, 250, 1),
          highlightColor: Color.fromRGBO(167, 221, 252, 1),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'MyLogo',
              style: TextStyle(
                fontFamily: 'Audiowide',
                fontSize: 70,
                shadows: <Shadow>[
                  Shadow(
                    blurRadius: 5,
                    offset: Offset.fromDirection(100, 5),
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
