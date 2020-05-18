import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
   _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
   AssetImage one=AssetImage("images/1.jpg");
   AssetImage two=AssetImage("images/2.jpg");
   AssetImage three=AssetImage("images/3.jpg");
   AssetImage four=AssetImage("images/4.jpg");
   AssetImage five=AssetImage("images/5.jpg");
   AssetImage six=AssetImage("images/6.jpg");
   AssetImage seven=AssetImage("images/7.jpg");
   AssetImage eight=AssetImage("images/8.jpg");
   
   AssetImage image =AssetImage("images/1.jpg");
   int random=1;
   void changeImage(){
     this.random++;
     if(this.random<9){

     }else{
       this.random=1;
     }
     AssetImage current;
     switch (random) {
       case 1:
         current=one;
         break;
       case 2:
         current=two;
         break;
       case 3:
         current=three;
         break;
       case 4:
         current=four;
         break;
       case 5:
         current=five;
         break;
       case 6:
         current=six;
         break;
       case 7:
         current=seven;
         break;
       case 8:
         current=eight;
         break;
     }
     setState(() {
      image=current; 
     });
   }
   
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Be Happy!!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Anshul"),
              accountEmail: Text("anshulbwr05@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text("AS"),
              ),
            ),
            ListTile(
              title: Text("Home(Quotes)"),
              trailing: Icon(Icons.home),
              onTap: ()=>Navigator.of(context).pushNamed("\home"),
            ),
            ListTile(
              title: Text("College Time Table"),
              trailing: Icon(Icons.school),
              onTap: ()=>Navigator.of(context).pushNamed("\college"),
            ),
            ListTile(
              title: Text("Announcements"),
              trailing: Icon(Icons.notification_important),
              onTap: ()=>Navigator.of(context).pushNamed("\noti"),
            ),
            ListTile(
              title: Text("TODO List"),
              trailing: Icon(Icons.book),
              onTap: ()=>Navigator.of(context).pushNamed("\firstpage"),
            ),
            
            ListTile(
              title: Text("Mess Schedule"),
              trailing: Icon(Icons.restaurant),
              onTap: ()=>Navigator.of(context).pushNamed("\mess"),
            ),
            

            Divider(color: Colors.white,),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
            
          ],
        ),
      ),







      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 0.0),
              child: Image(
              image: image,
            ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(100.0,20.0,100.0,20.0),
            padding: EdgeInsets.all(5.0),
            child:RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.black,
              child: Text("Next"
              ,style: TextStyle(
                fontSize: 23.0,
              ),
              ),
              onPressed: (){
                changeImage();
              },
            )
          )
        ],
      ),
    );
  }
} 