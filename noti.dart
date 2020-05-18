import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'services/crud.dart';

class Noti extends StatefulWidget {
  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {

  QuerySnapshot getlist;
  crudMethods crudObj = new crudMethods();

  @override
  void initState(){
    super.initState();
    this.crudObj.getDataNoti().then((results){
      setState(() {
        getlist = results;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Announcements"),
      ),
      body: _list(),

    );
  }

  Widget _list(){
    if(getlist!=null){
      return ListView.builder(
        itemCount: getlist.documents.length,
        itemBuilder: (BuildContext context,int index){
          return Card(
            color: Colors.black,
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.arrow_forward),
                  title: Text(getlist.documents[index].data["detail"],
                  style: TextStyle(fontSize: 17.0),
                  ),
                )
              ],
            ),
          );
        },
      );
    }else{
      return Center(child: Container(child:Text("Loading...")),);
    }

  }
}