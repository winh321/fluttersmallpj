import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}


// class Myapp extends StatelessWidget {
  
//     @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
//       mainAxisSpacing: 8.0,
//       crossAxisSpacing: 8.0
//       ),

//       children: [
//         Container(
//           color: Colors.black,
//         ),
//         Container(
//           color: Colors.green,
//         ),
//         Container(
//           color: Colors.orange,
//         ),
    
//         Container(
//           color: Colors.pink,
//         ),
      
//         Container(
//           color: Colors.yellow,
//         ),
//         Container(
//           color: Colors.blue,
//         )
        
//         ]
//         ),
//       );
//   }
// }



class Myapp extends StatelessWidget {
  List<String> _list = List.generate(100, (index) => "item $index");
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: _list.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          
          maxCrossAxisExtent: 100,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0),
       itemBuilder: ((context, index) {
        return InkWell(
          onTap: (() {
            String data = _list[index];
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("This is $data"))
            );
          }),
          child: Container(
            alignment: Alignment.center,
            color: index %2 == 0 ? Colors.yellow : Colors.red ,
            child: Text(_list[index]),
          ),
        );
      })),
      
      );
  }
}

