import 'package:flutter/material.dart';

class Info1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shop',
      home: WillPopScope(
        onWillPop: () => Future.value(true),
        child: Scaffold(
          backgroundColor: Colors.grey[700],
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
            title: Text('Extended info'),
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
                                  'https://i.pinimg.com/564x/c1/4c/8c/c14c8c4d325a2232506959175c2f91c4.jpg')
                              .image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text('info',
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
      ),
    );
  }
}
