import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:trainlink/studentPost.dart';
import 'package:trainlink/companyPage.dart';
import 'package:flutter/src/material/dropdown.dart';

//import 'package:read_more_text/read_more_text.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

String? dropdownValue = null;

String? contentPost =
    "Happy HR Professional Day! 💙 \nBehind every successful organization lies an HR team dedicated to shaping company culture, fostering talent, managing compliance, and so much more. 🚀\n\n\nWe're privileged to partner with so many exceptional HR leaders across the globe, who passionately strive to make the service industry a better place - especially for frontline workers.\n We couldn't help but share some of their wisdom on this special day! 🎉⤵\n Events season is truly upon us! ⏳";
String? post2 =
    "ASAL Technologies is currently looking for a Product Validation Engineer with a strong background in developing high-quality, object-oriented product validation of AI/ML.If you are interested in becoming a part of the ASAL family, please take a moment to review the job description below and Apply through the following link:https://lnkd.in/dabucq9c";
String? post3 =
    "Interested in stepping into the exciting world of Customer Success Management?We're seeking an experienced B2B Customer Success Manager to be part of our team! Explore this opportunity today on our website: https://lnkd.in/dB2PYEbC";
String? dropdownValueWeeks = null;
bool? isChecked = false;
bool stateOnline = false;
bool stateUniv = true;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            // width: 411,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.yellow,
                      margin: EdgeInsets.only(top: 10),
                      //  width: 160,
                      height: 50,
                      // color: Colors.blue,+
                      child: DropdownButton<String>(
                        underline: Container(),
                        padding: EdgeInsets.only(left: 0),
                        hint: Text(
                          'Select a location',
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 13),
                        alignment: Alignment.center,
                        onChanged: (String? newValue) {
                          setState(() {
                            if (newValue == "Nothing") {
                              dropdownValueWeeks = null;
                            } else {
                              dropdownValueWeeks = newValue!;
                            }
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Nablus",
                              ),
                            ),
                            value: "Nablus",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Ramallah",
                              ),
                            ),
                            value: "Ramallah",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Jenin",
                              ),
                            ),
                            value: "Jenin",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Tulkarm",
                              ),
                            ),
                            value: "Tulkarm",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Hebron",
                              ),
                            ),
                            value: "Hebron",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Bethlehem",
                              ),
                            ),
                            value: "Bethlehem",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Jerusalem",
                              ),
                            ),
                            value: "Jerusalem",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Outside Palestine",
                              ),
                            ),
                            value: "Outside Palestine",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Nothing",
                              ),
                            ),
                            value: "Nothing",
                          )
                        ],
                        value: dropdownValueWeeks,
                        icon: (dropdownValueWeeks != null)
                            ? Icon(
                                Icons.location_on,
                                color: Colors.amber,
                              )
                            : Icon(Icons.location_on),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      //  width: 160,
                      height: 50,
                      // color: Colors.blue,+
                      child: DropdownButton<String>(
                        underline: Container(),
                        // padding: EdgeInsets.only(left: 0),
                        hint: Text(
                          'Select a Framework',
                        ),

                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 13),
                        alignment: Alignment.center,
                        onChanged: (String? newValue) {
                          setState(() {
                            if (newValue == "Nothing") {
                              dropdownValue = null;
                            } else {
                              dropdownValue = newValue!;
                            }
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Flutter",
                              ),
                            ),
                            value: "Flutter",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "React",
                              ),
                            ),
                            value: "React",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Angular",
                              ),
                            ),
                            value: "Angular",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "VueJs",
                              ),
                            ),
                            value: "VueJs",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Svelte",
                              ),
                            ),
                            value: "Svelte",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "jQuery",
                              ),
                            ),
                            value: "jQuery",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Backbone.js",
                              ),
                            ),
                            value: "Backbone.js",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              child: Text(
                                "JavaScript",
                              ),
                            ),
                            value: "JavaScript",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Django",
                              ),
                            ),
                            value: "Django",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "ExpressJS",
                              ),
                            ),
                            value: "ExpressJS",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Laravel",
                              ),
                            ),
                            value: "Laravel",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "ASP .NET Core",
                              ),
                            ),
                            value: "ASP .NET Core",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Spring Boot",
                              ),
                            ),
                            value: "Spring Boot",
                          ),
                          DropdownMenuItem(
                            child: Container(
                              width: 80,
                              child: Text(
                                "Nothing",
                              ),
                            ),
                            value: "Nothing",
                          ),
                        ],
                        value: dropdownValue,
                        icon: (dropdownValue != null)
                            ? Icon(
                                Icons.computer,
                                color: Colors.amber,
                              )
                            : Icon(Icons.computer),
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.only(top: 7),
                    child: Row(
                      children: [
                        Tooltip(
                          message: "Is it online?",
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                stateOnline = !stateOnline;
                              });
                            },
                            icon: (stateOnline)
                                ? Icon(
                                    Icons.videocam,
                                    size: 30,
                                    color: Colors.amber,
                                  )
                                : Icon(
                                    size: 30,
                                    Icons.videocam_off_outlined,
                                    color: Color.fromARGB(255, 104, 104, 104),
                                  ),
                          ),
                        ),
                        Tooltip(
                          message: "Is it for University?",
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                stateUniv = !stateUniv;
                              });
                            },
                            icon: (stateUniv)
                                ? Icon(
                                    Icons.school,
                                    size: 30,
                                    color: Colors.amber,
                                  )
                                : Icon(
                                    size: 30,
                                    Icons.school_outlined,
                                    color: Color.fromARGB(255, 104, 104, 104),
                                  ),
                          ),
                        ),
                      ],
                    )

                    /* Row(
                    children: [
                      Text("Online"),
                      Checkbox(
                        value: isChecked,
                        activeColor: Colors.green,

                        //tristate: true,
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        },
                      ),
                    ],
                  ),
               */
                    )
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          /*  Stack(
            alignment: Alignment(0, 0),
            children: [
              Container(
                  width: 400.0,
                  height: 280,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      /*border: Border.all(
                        width: 1,
                        color: Colors.grey.shade400,
                      ),*/
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade400, blurRadius: 13.0)
                      ])),
              Container(
                margin: EdgeInsets.only(bottom: 70),
                decoration: BoxDecoration(
                  /* border: Border.all(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),*/
                  boxShadow: [
                    BoxShadow(color: Color(0xff003566), blurRadius: 13.0)
                  ],
                  borderRadius: BorderRadius.circular(100),
                  // margin: EdgeInsets.only(left: 50, bottom: 50),
                  image: DecorationImage(
                      image: AssetImage("images/Harri.jpeg"),
                      fit: BoxFit.cover),
                ),
                width: 100.0,
                height: 100,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Harri",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    /*Divider(
                      color: Colors.grey.shade400,
                      thickness: 1,
                    ),*/
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      //   decoration: BoxDecoration(
                      //  border: Border.all(width: 3, color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Color(0xffffc300),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "8.9 Rating",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.person,
                                size: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text("210 Trainee",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.handshake,
                                size: 24,
                                color: Color(0xffffc300),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text("2016",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text("Nablus ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                width: 410,
                height: 100,
                margin: EdgeInsets.only(top: 150),
                //  color: Colors.red,
              ),
            ],
          ),
       */ /*Divider(
            thickness: 1.0,
          ),*/
          Row(
            children: <Widget>[
              Container(
                width: 390.0,
                height: 60.0,
                margin: EdgeInsets.only(top: 10, bottom: 10),
                // color: Color(0xff003566),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.post_add,
                              color: Color(0xff003566),
                              size: 40.0,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    width: 1.0, color: Colors.grey.shade400),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60.0))),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePost(),
                              ));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 13.0),
                              child: Text(
                                "Let's share your works!                                ",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.blueGrey),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey[320],
            thickness: 5.0,
          ),
          /* Row(
            children: [
              Container(
                width: 410.0,
                height: 10.0,
                color: Colors.black26,
              )
            ],
          ),*/

          StudentsPosts(
              context,
              "Harri",
              'images/Harri.jpeg',
              Color(0xffffc300),
              "Yesterday at 11:35 AM . Nablus . React",
              "21",
              "8 Seats",
              "15.Oct-9PM",
              "images/hr.jpeg",
              contentPost),
          StudentsPosts(
              context,
              "ASAL Technologies ",
              'images/asal.jpeg',
              Color(0xff003566),
              " 2 hours ago  . Nablus . Flutter",
              "20",
              "15 Seats",
              "1.Oct-11:59PM",
              "images/asal-post.jpeg",
              post2),
          StudentsPosts(
              context,
              "ITG Software, Inc.",
              'images/itg.jpeg',
              Color(0xff003566),
              "10 mintes ago . Nablus",
              " 8 ",
              " 20 Seats ",
              " 1.Jan-11:59PM",
              "images/itg-post.jpeg",
              post3),
        ],
      ),
    );
  }
}

Widget StudentsPosts(context, ProName, proPic, requistColor, dateAndLocation,
    requist, seats, lockDate, imagePosts, contentPost) {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
    child: Row(
      children: <Widget>[
        Container(
          width: 411.0,
          //   height: 660.0,
          // color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 411.0,
                height: 50.0,
                // color: Colors.amber,
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40.0),
                                    border: Border.all(
                                        //    color: Color(0xff003566),
                                        style: BorderStyle.solid,
                                        color: Colors.grey.shade400),
                                    image: DecorationImage(
                                        image: AssetImage(proPic),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              //  width: 290.0,
                              height: 20.0,
                              // color: Colors.pink,
                              child: MaterialButton(
                                //  color: Colors.red,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          CompanyPage(proPic, ProName)));
                                  // print("yes");
                                },
                                child: Container(
                                  // width: 290,
                                  // color: Colors.yellow,
                                  child: Text(
                                    ProName,
                                    // textAlign: TextAlign.left,
                                    style: TextStyle(
                                      //     backgroundColor: Colors.green,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 10, top: 5),
                              width: 290.0,
                              height: 30.0,
                              // color: Colors.purple,
                              child: Text(
                                dateAndLocation,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.blueGrey[500]),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 61.0,
                          height: 50.0,
                          // color: Colors.brown,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 411.0,
                // height: 480.0,
                //  color: Colors.amber,
                child: Column(
                  children: [
                    SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Center(
                          child: Container(
                            //   height: 80.0,
                            width: 411.0,
                            padding: EdgeInsets.all(20),
                            //  color: Colors.blue,
                            child: ReadMoreText(
                              contentPost!,
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
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        )

                        // color: Colors.blue,

                        ),
                    Container(
                      width: 411.0,
                      height: 380.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(imagePosts),
                        fit: BoxFit.cover,
                      )),

                      //  color: Color.fromARGB(255, 243, 117, 45),
                    )
                  ],
                ),
              ),
              Container(
                width: 411.0,
                height: 30.0,
                // color: Colors.green,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 80,
                            height: 30,
                            //color: Colors.blue,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Color(0xff003566),
                                  size: 17,
                                ),
                                Text(
                                  requist,
                                  style: TextStyle(color: Color(0xff003566)),
                                )
                              ],
                            ))
                      ],
                    ),
                    /* Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: 170,
                              height: 30,
                              //  color: Colors.blue,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    comments,
                                    style: TextStyle(color: Color(0xff003566)),
                                  )
                                ],
                              ))
                        ],
                      ),
                    )*/
                  ],
                ),
              ),
              Container(child: Divider()),
              Container(
                width: 411.0,
                height: 30.0,
                //  color: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      /* width: 137,
                      height: 30.0,*/
                      // color: Colors.yellow,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 25,
                            icon: Icon(Icons.check),
                            color: requistColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              "Request",
                              style: TextStyle(
                                  color: requistColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      /*  width: 137,
                      height: 30.0,*/
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 20,
                            icon: Icon(Icons.person_add_alt),
                            color: Color(0xff003566),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              seats,
                              style: TextStyle(
                                  color: Color(0xff003566),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      /*   width: 137,
                      height: 30.0,*/
                      //color: Colors.yellow,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 20,
                            icon: Icon(Icons.lock_clock_outlined),
                            color: Colors.red,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              lockDate,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.grey[320],
                  thickness: 5.0,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
