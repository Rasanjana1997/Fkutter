import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final IconData iconData;
  final String string;

  CustomButton({@required this.onPressed, this.iconData, this.string});

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
