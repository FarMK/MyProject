import 'package:flutter/material.dart';
import 'package:online_shop/info2.dart';
import 'info1.dart';
import 'info3.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text('MainPage'),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => InfoAboutTheFirstFrame()));
                },
                child: Container(
                  width: 400,
                  height: 200,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: Image.network(
                                'https://i.pinimg.com/564x/c1/4c/8c/c14c8c4d325a2232506959175c2f91c4.jpg')
                            .image,
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => InfoAboutTheSecondFrame()));
                },
                child: Container(
                  width: 400,
                  height: 200,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.network(
                                  'https://i.pinimg.com/564x/82/93/1d/82931d83c5c57de8258d8dac1e8b009b.jpg')
                              .image,
                          fit: BoxFit.cover),
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => InfoAboutTheThirdFrame()));
                },
                child: Container(
                  width: 400,
                  height: 200,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.network(
                                  'https://i.pinimg.com/564x/ee/16/6b/ee166b825ef1b759c5566a281ab8d4ab.jpg')
                              .image,
                          fit: BoxFit.cover),
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
