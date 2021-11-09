import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String randomNumber = '0';

  buttonPressed(String randomNumber) {

  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter FlatButton Example'),
          ),
          body: Center(child: Column(children: <Widget>[

            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text('Get new Random Number', style: TextStyle(fontSize: 20.0),),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    randomNumber = Random().nextInt(1000).toString();
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text(randomNumber, style: TextStyle(fontSize: 20.0),),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text('Previous Numbers', style: TextStyle(fontSize: 20.0),),
                onPressed: () {},
              ),
            ),

          ]

          ))
      ),
    );
  }

}


