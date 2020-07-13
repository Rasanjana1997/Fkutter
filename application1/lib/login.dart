import 'package:application1/animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FadeAnimation(1, Text("Login", style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 6.0,
                          color: Colors.amberAccent,
                        ),
                      ],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),)),
                    SizedBox(height: 5,),
                    FadeAnimation(1.2, Text("Login to your account", style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[700]
                    ),)),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.2, makeInput(label: "Email")),
                      FadeAnimation(1.3, makeInput(label: "Password", obscureText: true)),

                    ],
                  ),
                ),

                FadeAnimation(1.4, Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child:  Container(
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
                      height: 45,
                      onPressed: () {},
                      color: Colors.amberAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text("Login", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                )),

                FadeAnimation(1.5, Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    Text("Sign up", style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 15,
                    ),)
                  ],
                )),
              ],
            ),
            FadeAnimation(1.2, Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/newApp1.png'),
                  fit: BoxFit.cover
                )
              ),
            )),
          ],
        ),
      ),
    );
  }
}

Widget makeInput({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(label, style: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: Colors.black87
      ),),
      SizedBox(height: 3,),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400])
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400])
          ),
        ),
      ),
      SizedBox(height: 20,),
    ],
  );
}