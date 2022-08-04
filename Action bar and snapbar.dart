import "package:flutter/material.dart";

 void main(){
  runApp(MaterialApp(home: Myapp(),
  debugShowCheckedModeBanner: false,));
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar lessons"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 30,
        toolbarHeight:100,
        shadowColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))
        ),
        leading: FlutterLogo(),
        actions: [
         IconButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("This is snack bar",style: TextStyle(color: Color.fromARGB(255, 112, 211, 120))
          ),
          duration:Duration(seconds: 5),
          action: SnackBarAction(label: "okay",onPressed: (() {
            
          }),
          textColor: Colors.red,),
          ));
         }, icon: Icon(Icons.settings)),
         IconButton(onPressed: (){}, icon: Icon(Icons.message)),
        ],
      ),
    body: Text("ak Cipta Badan Pendidikan dan Pelatihan Keuangan. Kementerian Keuangan Republik Indonesia. Manajemen Situs Portal BPPK. Jl. Purnawarman No 99 Kebayoran ",
    style: TextStyle(color: Colors.blue,
    fontSize: 20,),
    textAlign: TextAlign.justify,),
    
    );
}
}
