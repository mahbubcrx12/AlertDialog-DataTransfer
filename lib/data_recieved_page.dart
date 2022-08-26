import 'package:flutter/material.dart';

class DataRecievedPage extends StatefulWidget {
  String ?userId;
  String ?password;

  DataRecievedPage(this.userId,this.password);

  @override
  State<DataRecievedPage> createState() => _DataRecievedPageState();
}

class _DataRecievedPageState extends State<DataRecievedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Given data is:",style: TextStyle(
            fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 35
          ),),
              Text(widget.userId.toString(),style: TextStyle(
                  color: Colors.teal,
              fontSize: 30,
              fontWeight: FontWeight.bold),),
              Text(widget.password.toString(),style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),)
            ],
          ),


          ),
        ),

      );

  }
}
