import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

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
  MaterialColor color = Colors.teal;

  OnTab() {
    Navigator.push(
      context as BuildContext,
      MaterialPageRoute(builder: (context)=>SecondRoute()),
    );
  }

  DoubleTab() {
   Navigator.push(
       context as BuildContext,
       MaterialPageRoute(builder: (context)=>ThirdRoute()),
   );
  }

  LongPressTab() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> FourthRoute()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sensor'),),
      body: GestureDetector(
        onTap: OnTab,
        onDoubleTap: DoubleTab,
        onLongPress: LongPressTab,
        child: Container(
          color: color,
        ),
      ),
    );
  }

}

class SecondRoute extends StatelessWidget{
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Second Route')),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: () { Navigator.pop(context); }, child: Text('Go Back!'),

          ),
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget{
  const ThirdRoute({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Third page<3'),),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: () { Navigator.pop(context); }, child: Text('Go Back!'),),
        ),
      ),
    );
  }
}

class FourthRoute extends StatelessWidget{
  const FourthRoute({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('This is a secret page'),),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: () { Navigator.pop(context); }, child: Text('Go Back NOW!!!'),),
        ),
      ),
    );
  }
}
