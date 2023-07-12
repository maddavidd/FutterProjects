import 'package:flutter/material.dart';


void main()=> runApp(MyApp());


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
        title: Text("Telegram"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              height: 45,
              color: Colors.orange,
              child: Center(
                child: Text('Option1'),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 45,
              color: Colors.orange,
              child: Center(
                child: Text('Option1'),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 45,
              color: Colors.orange,
              child: Center(
                child: Text('Option1'),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 45,
              color: Colors.orange,
              child: Center(
                child: Text('Option1'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}