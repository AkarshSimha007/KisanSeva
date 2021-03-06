import 'package:flutter/material.dart';
import 'package:kisanseva/services/authservice.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child :Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
        title : Text("Kisan Seva",style: TextStyle(
          color :Colors.black
        ),),
        centerTitle :true,
        actions :[
          IconButton(icon: Icon(Icons.exit_to_app,color: Colors.black,),
          onPressed: () async{
             AuthService().signOut();
                          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=> AuthService().handleAuth()));
           
          },
          )
        ]
      ),
    ));
  }
}