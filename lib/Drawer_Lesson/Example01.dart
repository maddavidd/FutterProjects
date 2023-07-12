import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: TextButton(onPressed: () {  }, child: (Text('Dinstagram', style: TextStyle (color: Colors.black, fontSize: 24, fontFamily: 'Times New Roman')))),
        actions: [
          IconButton(onPressed:(){}, icon: Icon(Icons.message, color: Colors.black,)),
          IconButton(onPressed:(){}, icon: Icon(Icons.message, color: Colors.black,))
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        color: Colors.orange,
        items: [
        Icon(Icons.home_filled, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.add_box_outlined, size: 30),
          Icon(Icons.video_collection, size: 30),
          Icon(Icons.account_box, size: 30),
        ],
        onTap: (index){
          print('$index onTap');
        },
      ),
      body: Container(
        color: Colors.black,
      ),
    );
  }
}
