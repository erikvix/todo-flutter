import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _inputValue = '';
  String value = '';

  void _handleMenu() {}

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.shade200,
          leading: Center(
              child: FloatingActionButton(
            elevation: 0,
            hoverColor: Colors.transparent,
            hoverElevation: 0,
            backgroundColor: Colors.transparent,
            child: FaIcon(FontAwesomeIcons.bars),
            onPressed: _handleMenu,
          )),
        ),
        body: Container(
          alignment: AlignmentDirectional.center,
          margin: EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _inputValue = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.black87),
                        labelText: "Digite o nome da sua Task",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    elevation: 1,
                    hoverColor: Colors.transparent,
                    hoverElevation: 0,
                    backgroundColor: Colors.transparent,
                    onPressed: () {},
                    child: FaIcon(FontAwesomeIcons.arrowRight),
                    foregroundColor: Colors.deepPurple.shade400,
                  )
                ],
              ),
              Text(_inputValue), // Display the input value
            ],
          ),
        ));
  }
}

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return IconButton(
        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
        icon: FaIcon(FontAwesomeIcons.gamepad),
        onPressed: () {
          print("Pressed");
        });
  }
}
