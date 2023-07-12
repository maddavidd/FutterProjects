import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Image'
          ),
        ),
        body:
        Column(
          children: [
            Image.asset('assets/images/IMG_1088.JPG'),
            // Image.network(
            // 'https://picsum.photos/id/1074/400/400',
            // ),
          ],
        ),
      ),
    );
  }
}