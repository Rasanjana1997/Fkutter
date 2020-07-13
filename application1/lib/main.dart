import 'package:application1/animation/FadeAnimation.dart';
import 'package:application1/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages/home.dart';
import 'package:application1/signUp.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );

}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                FadeAnimation(1,Text("WellCome", style: TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 6.0,
                        color: Colors.amberAccent,
                      ),
                    ],
                  fontWeight: FontWeight.bold,
                  fontSize: 30
            ),)),
                SizedBox(height: 20,),
                FadeAnimation(1.2, Text("Automatic identity verification that enable you to verify your identity",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),)),
            ]
            ),
            FadeAnimation(1.4, Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/newApp2.png')
                )
              ),
            )),
            Column(
              children: <Widget>[
                FadeAnimation(1.5, MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Login", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),),
                )),
                SizedBox(height: 15,),
                FadeAnimation(1.6, Container(
                  padding: EdgeInsets.only(top: 1, left: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    color: Colors.amberAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Sign Up", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                  ),
                )),
              ],
            )
          ],
        ), //column
      ),
    ),
    );
  }
}

