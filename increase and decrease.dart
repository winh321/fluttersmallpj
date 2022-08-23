import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );

  }

}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePage createState() {
    // TODO: implement createState
 return _MyHomePage();
  }

}

class _MyHomePage extends State<MyHomePage>{
  int _counter = 56;
  void increaseCounter(){
    setState(() {
      _counter++;
    });
  }
  void decreaseCounter(){
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body:Container(
      child: Row(
        children: [
          IconButton(onPressed: increaseCounter,
              icon: Icon(Icons.add),
            iconSize: 50.0,
            color:Colors.red,
          ),
          Text("$_counter",
          style: Theme.of(context).textTheme.displayMedium,),
          IconButton(onPressed: decreaseCounter,
              icon:Icon(Icons.remove),
          iconSize: 50.0,
            color: Colors.blue,
          )
        ],
      ),
      ),
    );
  }

}

