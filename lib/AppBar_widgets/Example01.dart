import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage()
      );
    }
  }

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "AppBar",
          style: TextStyle(
              fontSize: 24,
              fontFamily: "Times New Roman"
          ),
        ),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.format_list_bulleted_outlined),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Assalomu alyekum')));
            },
          )
        ],
      ),
    );
  }
}

