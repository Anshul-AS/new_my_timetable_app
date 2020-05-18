import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'College.dart';
import 'Mess.dart';
import 'screens/note_list.dart';
import 'noti.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Time Table App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
      routes: <String,WidgetBuilder>{
        "\home":(BuildContext context) => HomePage(),
        "\college":(BuildContext context) => College(),
        "\mess":(BuildContext context) => Mess(),
        "\firstpage":(BuildContext context) => NoteList(),
        "\noti":(BuildContext context) => Noti(),
      },
    );
  }
}