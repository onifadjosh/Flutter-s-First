import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Pamilerin App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home:const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello world'),
        ),
        body:TextInput(),
        backgroundColor: Colors.blueGrey[200],
    );
  }
}

class TextInput extends StatefulWidget {
  const TextInput({super.key});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final controller = TextEditingController();
  String text= "";

  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }
  void changeText(text){
    // setState(() {
    //   this.text=text;
    // });
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: <Widget>[
      TextField(
      controller: this.controller,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.message), 
        labelText: "Type a message"),
        onChanged: (text)=> this.changeText(text),
    ),
    Text(this.text)
    ]);
  }
}


class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}


//more stateful widgets..
class _CounterState extends State<Counter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(onPressed: _incrementCounter, child: Text('increment'))
      ],
    );
  }
}