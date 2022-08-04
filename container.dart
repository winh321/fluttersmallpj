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
      body: Container(
        // color: Colors.black,
        // width: 200,
        // height: 200,
        margin: EdgeInsets.fromLTRB(20, 50, 0, 0),
        child: Text(
          "This is my application",
          style: TextStyle(fontSize: 39, color: Colors.white),
        ),
        alignment: Alignment.centerRight,
        constraints: BoxConstraints(maxWidth: 300,maxHeight: 300),
        // transform: Matrix4.identity()..rotateZ(0.3),
        decoration: BoxDecoration(
          color: Colors.red,
          gradient:LinearGradient(
            colors: [Colors.red,Colors.green,Colors.yellow],
            begin: Alignment.topLeft,
            end:Alignment.bottomRight),
          border:Border.all(color: Colors.green,width: 8),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30)
        ),
        
      ),
    );
  }
}
