import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: const MyHomePage(),
      title: 'Flashlight',
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState()=> _MyHomePAgeState();
}

class _MyHomePAgeState extends State<MyHomePage>{

  bool iconColor = false;

  Ontab(){
    setState(() {
       iconColor = !iconColor;
  });
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.flashlight_on),
      title: Text('Flashlight'),
    ),
      body: GestureDetector(
        onTap: Ontab,
        child: Container(
          color: iconColor? Colors.blue : Colors.transparent,
          child: Center(
            child: Icon(Icons.flashlight_on, size: 72,
              color: iconColor? Colors.orange : Colors.black),
          ),
        ),
      ),
    );
  }
}