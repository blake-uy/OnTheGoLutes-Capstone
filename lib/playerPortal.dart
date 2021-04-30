import 'package:flutter/material.dart';

class PlayerPortalPage extends StatelessWidget {
  @override
  Widget build (BuildContext context)
  {
    return Scaffold (
      appBar: AppBar(
        title: Text("PLU Portal"),
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('images/pluLute.jpg', fit: BoxFit.cover)
        ),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.black,
      body: Container(
        //color: Colors.red,
        child: Center (
          child: Column (
            children: <Widget> [
              SizedBox(height: 70.0),
              Image.asset('images/pluLogo.png'),
              SizedBox(height: 50.0),
              Center(child: Text("WELCOME", style: TextStyle(color: Colors.white, fontSize: 25,))),
              SizedBox(height: 25.0),
              Center(child: Text("PLU ID:   ______________________", style: TextStyle(color: Colors.white))),
              SizedBox(height: 15.0),
              Center(child: Text("Password:   ___________________", style: TextStyle(color: Colors.white))),
              SizedBox(height: 25.0),
              Center(child: IconButton(icon: Icon(Icons.arrow_right_alt_rounded, color: Colors.white), iconSize: 50.0,)),
              SizedBox(height: 25.0),
              Center(child: Text("Create Account", style: TextStyle(color: Colors.white, ))),
            ]
          )


      ))


    ); // END OF SCAFFOLD
  }
}