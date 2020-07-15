import 'package:flutter/material.dart';
import 'package:application1/custom_widgets/profile_button.dart';
import 'build_pc.dart';

class UserHomePage extends StatefulWidget {
  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 4 / 6,
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
                    height: MediaQuery.of(context).size.height/3,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 40.0),
                            child: CircleAvatar(
                              radius: 85.0,
                              backgroundColor: Colors.white70,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/images/user.jpg'),
                                radius: 80.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Text('Sarah Jones', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),),
                          SizedBox(height: 10.0,),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    elevation: 5.0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Builds",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 20.0,
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
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "28.5K",
                                  style: TextStyle(
                                    fontSize: 20.0,
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
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "1300",
                                  style: TextStyle(
                                    fontSize: 20.0,
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
                ),
                Container(
                  child: Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    elevation: 5.0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('Lives In :', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('Lives in Anuradhapura, SriLanka')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    elevation: 5.0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('Contact :', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('0714567890')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    elevation: 5.0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('Bio         :', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('Graphic and Web Designer')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white54,
            height: MediaQuery.of(context).size.height * 2 / 6,
            child: MediaQuery.removePadding(
              removeTop: true,
              removeBottom: true,
              context: context,
              child: GridView.count(
                crossAxisCount: 3,
                children: <Widget>[
                  CustomButton(
                    iconData: Icons.computer,
                    string: 'Build A PC',
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddBuildClass()));
                    },
                  ),
                  CustomButton(
                    iconData: Icons.apps,
                    string: 'My Builds',
                    onPressed: (){
                      print('Button 2');
                    },
                  ),
                  CustomButton(
                    iconData: Icons.feedback,
                    string: 'Notifications',
                    onPressed: (){
                      print('Button 3');
                    },
                  ),
                  CustomButton(
                    iconData: Icons.dashboard,
                    string: 'News Feed',
                    onPressed: (){
                      print('Button 4');
                    },
                  ),
                  CustomButton(
                    iconData: Icons.home,
                    string: 'My Profile',
                    onPressed: (){
                      print('Button 1');
                    },
                  ),
                  CustomButton(
                    iconData: Icons.settings,
                    string: 'Settings',
                    onPressed: (){
                      print('Button 6');
                    },
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
