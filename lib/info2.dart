import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Info2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('Extended info'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          backgroundColor: Colors.grey[700],
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
                                'https://i.pinimg.com/564x/82/93/1d/82931d83c5c57de8258d8dac1e8b009b.jpg')
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
