import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class trainee extends StatefulWidget {
  var name;
  var photo;
  trainee(this.photo, this.name);
  @override
  _traineeState createState() => _traineeState(photo, name);
}

class _traineeState extends State<trainee> {
  String namee;
  String photoo;
  _traineeState(this.photoo, this.namee);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                color: const Color(0xffff003566),
                icon: const Icon(Icons.arrow_back),
                iconSize: 30,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              backgroundColor: Colors.white,
              title: const Text(
                "Trainee",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    /*color: Colors.teal*/
                    color: Color(0xff003566)),
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  trainees(
                    "images/studentBoy.jpeg",
                    "Ahmad Khalel",
                  ),
                  trainees(
                    "images/studentBoy.jpeg",
                    "Waleed Asad",
                  ),
                  trainees(
                    "images/studentGirl.jpeg",
                    "Sally Qasem",
                  ),
                  trainees(
                    "images/studentBoy.jpeg",
                    "Basem Ahmad",
                  ),
                  trainees(
                    "images/studentGirl.jpeg",
                    "Jana Belal",
                  ),
                  trainees(
                    "images/studentGirl.jpeg",
                    "Dana Belal",
                  ),
                  trainees(
                    "images/studentGirl.jpeg",
                    "Amal Hassan",
                  ),
                  trainees(
                    "images/studentGirl.jpeg",
                    "Fatima Belal",
                  ),
                ],
              ),
            )));
  }
}

Widget trainees(photo33, name33) {
  return MaterialButton(
    onPressed: () {},
    // padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 411,
      height: 70,

      margin: EdgeInsets.only(bottom: 2),
      //  color: Colors.transparent,
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                // margin: EdgeInsets.only(bottom: 60),
                decoration: BoxDecoration(
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                        image: AssetImage(photo33), fit: BoxFit.cover)),
              ),
              Container(
                width: 200,
                //        color: Colors.yellow,
                margin: EdgeInsets.only(left: 10),
                //color: Colors.amber,
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  name33,
                  // textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                // alignment: Alignment.topLeft,
              ),
            ],
          ),
          Divider()
        ],
      ),
    ),
  );
}
