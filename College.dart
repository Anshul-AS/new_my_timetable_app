import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'services/crud.dart';
import 'period.dart';
class College extends StatefulWidget {
  @override
   _CollegeState createState() => _CollegeState();
}
class _CollegeState extends State<College> {
  QuerySnapshot periods;
  crudMethods crudObj = new crudMethods();

  @override
  void initState(){
    super.initState();
    this.crudObj.getData().then((results){
      setState(() {
        periods = results;
      });
    });
  }



   
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("College Time Table"),
      ),
      body: _list(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){},
        child: Icon(Icons.edit,
          color: Colors.white,
        ),
      ),
       
    );
  }


  Widget _list(){
    if(periods!=null){
         List<details> input=[
     details("Day",Colors.black,Colors.white),
     details(periods.documents[0].data["time"],Colors.black,Colors.white),
     details(periods.documents[1].data["time"],Colors.black,Colors.white),
     details(periods.documents[2].data["time"],Colors.black,Colors.white),
     details(periods.documents[3].data["time"],Colors.black,Colors.white),
     //da
     details("Mon",Colors.black,Colors.white),
     details(periods.documents[8].data["time"],Colors.black26,Colors.white),
     details(periods.documents[9].data["time"],Colors.black26,Colors.white),
     details(periods.documents[10].data["time"],Colors.black26,Colors.white),
     details(periods.documents[11].data["time"],Colors.black26,Colors.white),
     //da
     details("Tue",Colors.black,Colors.white),
     details(periods.documents[12].data["time"],Colors.black26,Colors.white),
     details(periods.documents[13].data["time"],Colors.black26,Colors.white),
     details(periods.documents[14].data["time"],Colors.black26,Colors.white),
     details(periods.documents[15].data["time"],Colors.black26,Colors.white),
     //da
     details("Wed",Colors.black,Colors.white),
     details(periods.documents[20].data["time"],Colors.black26,Colors.white),
     details(periods.documents[21].data["time"],Colors.black26,Colors.white),
     details(periods.documents[22].data["time"],Colors.black26,Colors.white),
     details(periods.documents[23].data["time"],Colors.black26,Colors.white),
     //da
     details("Thu",Colors.black,Colors.white),
     details(periods.documents[16].data["time"],Colors.black26,Colors.white),
     details(periods.documents[17].data["time"],Colors.black26,Colors.white),
     details(periods.documents[18].data["time"],Colors.black26,Colors.white),
     details(periods.documents[19].data["time"],Colors.black26,Colors.white),
     //da
     details("Fri",Colors.black,Colors.white),
     details(periods.documents[4].data["time"],Colors.black26,Colors.white),
     details(periods.documents[5].data["time"],Colors.black26,Colors.white),
     details(periods.documents[6].data["time"],Colors.black26,Colors.white),
     details(periods.documents[7].data["time"],Colors.black26,Colors.white),
   ];


      return Container(
        child: Card(
          
            child: GridView.builder(
              padding: EdgeInsets.all(1.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                childAspectRatio: 1.0,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
              ),
              itemCount: input.length,
              itemBuilder: (context,i)=>SizedBox(
                child: MaterialButton(
                  
                  child: Text(input[i].detail,
                    style: TextStyle(color: input[i].textcolor),
                  ),
                  color: input[i].backcolor,
                  onPressed: (){},
                ),
              ),
            ),
          
        ),
      );

    }else{
      return Center(child: Container(child:Text("Loading...")),);
    }



  }
} 