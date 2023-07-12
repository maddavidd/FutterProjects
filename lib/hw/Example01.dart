import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dinstagram',
            style: TextStyle(
              fontSize: 24,
              fontFamily: "Academy Engraved LET",
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.account_circle_outlined),
              onPressed: () {
                print('Hi');
              },
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  hintText: "email",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
