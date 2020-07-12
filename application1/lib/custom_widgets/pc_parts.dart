import 'package:flutter/material.dart';

class AddBuildCard extends StatefulWidget {
  @override
  _AddBuildCardState createState() => _AddBuildCardState(null, null, null);
}

class _AddBuildCardState extends State<AddBuildCard> {
  final GestureTapCallback onPressed;
  final IconData iconData;
  final String string;

  _AddBuildCardState(this.onPressed, this.iconData, this.string);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5.0,
      child: MaterialButton(
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
              color: Colors.amberAccent,
              size: 40.0,
            ),
            SizedBox(height: 10.0,),
            Text(
              string,
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
