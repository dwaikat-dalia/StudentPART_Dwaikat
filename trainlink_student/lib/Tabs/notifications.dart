import 'package:flutter/material.dart';

class Notification22 extends StatefulWidget {
  @override
  _Notification22State createState() => _Notification22State();
}

class _Notification22State extends State<Notification22> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: 411,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Notifications",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                //  color: Colors.amber,
              ),
              Divider(),
              noti("images/asal.jpeg", "ASAL Technologies",
                  "Posted about React f..", "1 minutes ago"),
              noti("images/najah.jpg", "NNU", "Posted about new training..",
                  "5 minutes ago"),
              noti("images/najah.jpg", "NNU", "Posted about new training..",
                  "10 minutes ago"),
              noti("images/progineer.jpg", "ProGineer Technologies",
                  "Posted about React..", "50 minutes ago"),
              noti("images/g4LIST.jpeg", "Flutter Fall23", "Added a task",
                  "1 hour ago"),
              noti("images/najah.jpg", "NNU", "Add comment on yo..",
                  "10 minutes ago"),
              noti("images/najah.jpg", "NNU", "Posted about new training..",
                  "10 minutes ago"),
            ],
          ),
        )));
  }
}

Widget noti(photo33, name33, contentpost33, time33) {
  return MaterialButton(
    onPressed: () {},
    // padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 411,
      height: 100,
      margin: EdgeInsets.only(bottom: 2),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                image: DecorationImage(
                    image: AssetImage(photo33), fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Container(
                  width: 200,

                  //color: Colors.amber,
                  padding: EdgeInsets.only(top: 15, bottom: 10),
                  child: Text(
                    name33,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  // alignment: Alignment.topLeft,
                ),
                Container(
                    width: 200,
                    // color: Colors.amber,
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      contentpost33,
                    )),
                Container(
                    width: 200,
                    //  color: Colors.amber,
                    child: Text(
                      time33,
                      style: TextStyle(color: Colors.grey.shade500),
                    ))
              ],
            ),
          ),
          Icon(Icons.more_horiz)
        ],
      ),
    ),
  );
}
