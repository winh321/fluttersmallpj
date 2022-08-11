import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

// class Myapp extends StatelessWidget {
  
//   List<String> list = List.generate(100, (index) => "item $index");
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: list.length,
//         itemBuilder: ((BuildContext context,int index){
//           return Text(list[index]);
//         }))
//     );
//   }
// }


class Myapp extends StatelessWidget {
  
  List<Contact> list = List.generate(100, (index) {
    return Contact(
      name: "Name $index",
      phone: "Phone $index" ,
      adress: "Adress $index"

    );
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: ((BuildContext context,int index){
          return Card(
          
            child: ListTile(
              leading: Icon(Icons.home),
              
              title:Text(list[index].name!) ,
              subtitle: Text(list[index].phone!),
              trailing: Text(list[index].adress!),
              
              ),
          );
        }))
    );
  }
}
class Contact{
 final String? name ;
 final String? phone;
   final String? adress;

  Contact({this.name, this.phone,this.adress});


}
