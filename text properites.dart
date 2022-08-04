import "package:flutter/material.dart";

 void main(){
  runApp(MaterialApp(home: Myapp()));
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("A peep at some distant orb has power to raise and purify our thoughts like a strain of sacred music, or a noble picture, or a passage from the grander poets. It always does one good.",
      maxLines: 3,
      overflow:TextOverflow.fade,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        color: Color.fromARGB(255, 209, 231, 8),
        backgroundColor: Colors.black45,
        letterSpacing: 5,
        decoration: TextDecoration.combine([
          TextDecoration.underline,
          TextDecoration.overline
        ]),
        decorationColor: Colors.red,
        decorationThickness: 5,
        fontWeight: FontWeight.bold,
        fontFamily: "MouseMemoirs",


      ),)),
    );
  }
}
