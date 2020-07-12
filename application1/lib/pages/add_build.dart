import 'package:flutter/material.dart';

class AddBuildClass extends StatefulWidget {
  @override
  _AddBuildClassState createState() => _AddBuildClassState();
}

class _AddBuildClassState extends State<AddBuildClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getCustomAppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height * 5 / 6,
        margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ListView(
              children: <Widget>[

              ],
            )
          ],
        ),
      ),
    );
  }

  _getCustomAppBar(){
    return PreferredSize(
      preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/14),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.amberAccent,
              Colors.orangeAccent,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
              Navigator.pop(context);
            }),
            Text('Build A PC', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            IconButton(icon: Icon(Icons.favorite), onPressed: (){}),
          ],),
      ),
    );
  }
}
