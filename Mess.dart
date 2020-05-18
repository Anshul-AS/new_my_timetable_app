import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Mess extends StatefulWidget {
  @override
   _MessState createState() => _MessState();
}
class _MessState extends State<Mess> {
   AssetImage lohit=AssetImage("images/lohit.jpeg");
   AssetImage brahma=AssetImage("images/brahma.jpeg");
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Mess Schedule"),
      ),
      body: Center(
        child: Card(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              Image(
                image: lohit,
              ),
              Image(
                image: brahma,
              ),
            ],
          ),
        )
      ),
       
    );
  }
} 