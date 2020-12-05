import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Padding ob = new Padding(padding: EdgeInsets.all(10));
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('Gallery'),
          backgroundColor: Colors.grey[700],
          leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.pop(context, true);
              }),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(
                            'https://i.pinimg.com/236x/b0/c0/38/b0c0385c469faf7986dacf6b061abc12.jpg')
                        .image,
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(
                            'https://i.pinimg.com/564x/63/2b/17/632b179b2222db93dcf39f9244489c76.jpg')
                        .image,
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(
                            'https://i.pinimg.com/564x/6d/2f/57/6d2f5712138d9d3f02959101cdac4ed7.jpg')
                        .image,
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(
                            'https://i.pinimg.com/564x/2b/57/d7/2b57d7db8ddf333106940d04dc485ecd.jpg')
                        .image,
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(
                            'https://i.pinimg.com/564x/06/41/22/0641223c99e7b170fe39779c660dfc8e.jpg')
                        .image,
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(
                            'https://i.pinimg.com/564x/4c/08/8c/4c088cbdf68c5e7b58f9b4c55c5fd738.jpg')
                        .image,
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
