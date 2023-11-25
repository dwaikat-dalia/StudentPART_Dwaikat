import 'package:flutter/material.dart';
import 'package:trainlink/Link.dart';
import 'dart:io';
import 'package:readmore/readmore.dart';

class projects extends StatelessWidget {
  const projects({super.key});

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
            "Projects ",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                /*color: Colors.teal*/
                color: Color(0xff003566)),
          ),
        ),
        body: contact(),
      ),
    );
  }
}

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _contactState createState() => _contactState();
}

class _contactState extends State<contact> {
  bool majorState = false;
  bool StartYearState = false;
  bool StudyStateState = false;
  bool GYState = false;
  bool CCState = false;
  bool GPAState = false;
  bool save = false;

  final TextEditingController _controllerPhone =
      TextEditingController(text: '1');
  final TextEditingController _controllerEmail = TextEditingController(
      text:
          "daliadwaikat@gmail.comdaliadwaikat@gmail.comdaliadwaikat@gmail.comdaliadwaikat@gmail.comdaliadwaikat@gmail.comdaliadwaikat@gmail.comdaliadwaikat@gmail.comdaliadwaikat@gmail.com");
  final TextEditingController _controllerEU =
      TextEditingController(text: 's11923878@stu.najah.edu');

  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          //height: 780,
          color: Colors.white,
          child: Column(
            children: [
              pro("https://daliadwaikat-restaurantsite.netlify.app/",
                  "New web-page using #HTML #CSS and #Media_query"),
              pro("https://daliadwaikat2.netlify.app/",
                  "This is my first web-page using #HTML #CSS and #Media_query"),
              Container(
                width: 360,
                height: 360,

                // color: Colors.yellow,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/projects.jpeg"))),
                margin: EdgeInsets.only(top: 65),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget pro(link, describe) {
    return Container(
        width: 400,
        // height: 20,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.only(top: 20, left: 5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  Text(
                    "Project Link : ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                      width: 200,
                      height: 50,
                      // color: Colors.white,
                      child: Link(link)

                      /*TextField(
                                enabled: majorState,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .black, // Set the text color to green
                                ),
                                controller: _controllerPhone,
                                // Optional: Style the text field
                                decoration: InputDecoration(
                                  //   labelText: 'Field Label', // Change the label text if needed
                                  border: InputBorder
                                      .none, // Remove the default underline
                                ),
                              )*/
                      )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 0),
              child: Row(
                children: [
                  Text(
                    "Describe Project: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,

                      child: Container(
                        //   height: 80.0,
                        width: 211.0,
                        padding: EdgeInsets.all(20),
                        //  color: Colors.blue,
                        child: ReadMoreText(
                          describe,
                          trimLines: 3,
                          style: TextStyle(fontSize: 15),
                          trimCollapsedText: '... Read More',
                          trimExpandedText: '... Read Less',
                          trimMode: TrimMode.Line,
                          textAlign: TextAlign.justify,
                          lessStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          moreStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),

                      // color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
