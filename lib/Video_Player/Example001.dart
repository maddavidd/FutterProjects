import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}





class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'FLutter',
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
  @override
  State <MyHomePage> createState()=> _MyHomePage();
}


class _MyHomePage extends State<MyHomePage>{
  @override
  Widget build( BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('VideoPlayer'),
      ),
    );
  }
}