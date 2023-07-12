import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login Page",
      home: MyHomePage(),
    );
  }

}

class MyHomePage  extends StatefulWidget{
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState()=> _loginPage();
}

class _loginPage extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyShop'),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),

                  labelText: "email",
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: 'password'
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: (){print('button onPresed');}, child: Text('confirm'))
            ],
          ),

        ),

      ),
    );


  }
}