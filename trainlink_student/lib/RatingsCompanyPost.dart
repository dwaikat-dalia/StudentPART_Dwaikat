// ignore: file_names
import 'package:flutter/material.dart';
import 'package:trainlink/companyPage.dart';

import 'package:trainlink/main.dart';

bool s1 = false, s2 = false, s3 = false, s4 = false, s5 = false;

class RatingPost extends StatefulWidget {
  var name;
  var photo;
  RatingPost(this.photo, this.name);

  @override
  // ignore: library_private_types_in_public_api
  _RatingPostState createState() => _RatingPostState(photo, name);
}

class _RatingPostState extends State<RatingPost> {
  String namee;
  String photoo;
  _RatingPostState(this.photoo, this.namee);

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
            "Ratings and reviews",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                /*color: Colors.teal*/
                color: Color(0xff003566)),
          ),
        ),
        body: Container(
          height: 780,
          width: 411.0,
          //color: Colors.amber,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(children: [
                  Container(
                    width: 411,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              border: Border.all(
                                  //    color: Color(0xff003566),
                                  style: BorderStyle.solid,
                                  color: Colors.grey.shade400),
                              image: DecorationImage(
                                  image: AssetImage("images/studentBoy.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Ahmad Khaled",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    //   color: Colors.blue,
                  ),
                  Container(
                    width: 411,
                    height: 40,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Ratings and reviews is available for you.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              s1 = true;
                              s2 = false;
                              s3 = false;
                              s4 = false;
                              s5 = false;
                            });
                          },
                          icon: (s1)
                              ? Icon(
                                  Icons.star,
                                  color: Color(0xffffc300),
                                )
                              : Icon(Icons.star_border),
                          iconSize: 35,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              s1 = true;
                              s2 = true;
                              s3 = false;
                              s4 = false;
                              s5 = false;
                            });
                          },
                          icon: (s2)
                              ? Icon(
                                  Icons.star,
                                  color: Color(0xffffc300),
                                )
                              : Icon(Icons.star_border),
                          iconSize: 35,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              s1 = true;
                              s2 = true;
                              s3 = true;
                              s4 = false;
                              s5 = false;
                            });
                          },
                          icon: (s3)
                              ? Icon(
                                  Icons.star,
                                  color: Color(0xffffc300),
                                )
                              : Icon(Icons.star_border),
                          iconSize: 35,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              s1 = true;
                              s2 = true;
                              s3 = true;
                              s4 = true;
                              s5 = false;
                            });
                          },
                          icon: (s4)
                              ? Icon(
                                  Icons.star,
                                  color: Color(0xffffc300),
                                )
                              : Icon(Icons.star_border),
                          iconSize: 35,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              s1 = true;
                              s2 = true;
                              s3 = true;
                              s4 = true;
                              s5 = true;
                            });
                          },
                          icon: (s5)
                              ? Icon(
                                  Icons.star,
                                  color: Color(0xffffc300),
                                )
                              : Icon(Icons.star_border),
                          iconSize: 35,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 411,
                    height: 700,

                    //  color: Colors.green,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                maxLength: 500,
                                keyboardType: TextInputType.text,
                                maxLines: 5,
                                minLines: 1,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(width: 1.7)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            width: 1.7,
                                            color: Color(0xffffc300))),
                                    hintText:
                                        "Describe your experience (optional) "),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 130,
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      right: 20, bottom: 100, top: 20),
                                  // color: const Color.fromARGB(255, 210, 165, 218),
                                  child: MaterialButton(
                                    child: Text("POST"),
                                    color: Color(0xffffc300),
                                    textColor: Colors.black,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return CompanyPage(photoo, namee);
                                      }));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
