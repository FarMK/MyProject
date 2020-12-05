import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoAboutTheThirdFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('Extended info'),
          backgroundColor: Colors.grey[700],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: Image.network(
                                'https://i.pinimg.com/564x/ee/16/6b/ee166b825ef1b759c5566a281ab8d4ab.jpg')
                            .image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Buy',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'здесь будет текст',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
