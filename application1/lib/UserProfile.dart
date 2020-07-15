import 'package:application1/animation/FadeAnimation.dart';
import 'package:application1/login.dart';
import 'package:flutter/material.dart';
import 'package:application1/custom_widgets/profile_button.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.amberAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 17, color: Colors.black,),
        ),
      ),
      body: SafeArea(
        child: Container(
        child:Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.amberAccent, Colors.orangeAccent]
                    )
                ),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/4,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FadeAnimation(1, Container(
                          padding: EdgeInsets.only(top: 5.0),
                          child: CircleAvatar(
                            radius: 60.0,
                            backgroundColor: Colors.white70,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/newApp5.jpg'),
                              radius: 65.0,
                            ),
                          ),
                        )),
                        SizedBox(height: 5.0,),
                        FadeAnimation(1.1, Text('97 Asiri', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15.0),)),
                        SizedBox(height: 5.0,),
                      ],
                    ),
                  ),

                ),
              ),
              FadeAnimation(1.2, Container(
                child: Card(
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Builds",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Followers",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                "28.5K",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                "1300",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
              FadeAnimation(1.3, Container(
                child: Card(
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17.0),
                    child: Row(
                      children: <Widget>[
                        Text("User Name :", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                        ),),
                      ],
                    ),
                  ),
                ),
              )),

              FadeAnimation(1.4, Container(
                child: Card(
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17.0),
                    child: Row(
                      children: <Widget>[
                        Text("Good At       :", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                        ),)
                      ],
                    ),
                  ),
                ),
              )),
              FadeAnimation(1.5, Container(
                child: Card(
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17.0),
                    child: Row(
                      children: <Widget>[
                        Text("Contact No :", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                        ),)
                      ],
                    ),
                  ),
                ),
              )),
              FadeAnimation(1.6, Container(
                child: Card(
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17.0),
                    child: Row(
                      children: <Widget>[
                        Text("Lives From  :", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                        ),)
                      ],
                    ),
                  ),
                ),
              )),
            ],
          )
          )
      ),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FadeAnimation(1.7, FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        hoverColor: Colors.yellow,
        onPressed: () {},
        tooltip: 'Save',
        child: Icon(Icons.update,),
        elevation: 2,
      )),
      bottomNavigationBar: FadeAnimation(1.8, BottomAppBar(
        color: Colors.orange,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 40,
        ),
      )),
    );
  }
}
