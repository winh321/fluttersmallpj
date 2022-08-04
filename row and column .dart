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
      appBar: AppBar(title: Text("Row and Colums"),),
      // body:Container(
      //   color: Colors.green,
      //   height: 100,
      //   child: Row(
      //   mainAxisSize: MainAxisSize.max,
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   textDirection: TextDirection.rtl,
      //   children: [Text("Text one"),Expanded(child: Text("heck out results for Free stories. Search for Free stories at Faqtoids. Related Searches. Search Now. Find Answers. Quality Results. Popular Searches. Internet Information. Types: Home & Garden, Finance")),Text("Text Three") 
      //   ],),
      // ),

      body: Column(
        children: [
          Expanded(child: Container(color: Colors.green,),flex: 5,) ,
          Expanded(child: Container(color: Colors.yellow,),flex: 1,),
          Expanded(child: Container(color: Colors.red,),flex: 3,),
          
        ],
      ),


      
    );
  }
}
