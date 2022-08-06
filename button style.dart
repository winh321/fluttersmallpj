import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Image(image:AssetImage("images/jkr.png")),
        TextButton(onPressed: (){
          print("clicking");
        },
        onLongPress: () {
          print("on long press");
        },
         style: TextButton.styleFrom(
       primary: Colors.red
        ),
         child: Text("this is simple text")),
        ElevatedButton(onPressed: (){
            print("elevated button ");
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
        ),
         child: Text("elevated button")),
        OutlinedButton(onPressed: (){
          print("outline button");
        }, child:Text("Outline button"))
      ],));}
}
