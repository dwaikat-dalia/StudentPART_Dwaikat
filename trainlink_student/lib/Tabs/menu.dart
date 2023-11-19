import 'package:flutter/material.dart';
import 'package:trainlink/Settings/mainSettings.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Divider(),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MainSettings();
                  }));
                },
                child: Container(
                  width: 411,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 2),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.settings,
                          size: 35,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Container(
                          width: 200,

                          //color: Colors.amber,
                          padding: EdgeInsets.only(top: 0, bottom: 10),
                          child: Text(
                            "Settings",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          // alignment: Alignment.topLeft,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Container(
                  width: 411,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 2, left: 0),
                  padding: EdgeInsets.only(left: 26),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.logout,
                          size: 35,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 35),
                        child: Container(
                          width: 200,

                          //color: Colors.amber,
                          padding: EdgeInsets.only(top: 0, bottom: 10),
                          child: Text(
                            "Log Out",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          // alignment: Alignment.topLeft,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
