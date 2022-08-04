import "package:flutter/material.dart";

 void main(){
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Win Htike")),),
      body: Center(child: Text("Hello World",
      style: TextStyle(fontSize: 30,
      color: Colors.purple),)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: (){
      print("click");
        },
      ),
      
      );

  }
}

