import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trainlink/createNewGroup.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:flutter/src/material/dropdown.dart';

class IntroPage4 extends StatefulWidget {
  const IntroPage4({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IntroPage4State createState() => _IntroPage4State();
}

class _IntroPage4State extends State<IntroPage4> {
  bool valuue = false;
  String dropdownValue = "Flutter";
  String nameGroup = '';
//users Flutter
  List<Map<String, dynamic>> Flutter = [
    {
      "id_status": false,
      "image": "images/studentBoy.jpeg",
      "name": "Ahmad Khaled"
    },
    {
      "id_status": false,
      "image": "images/studentBoy.jpeg",
      "name": "Waleed Asad"
    },
    {
      "id_status": false,
      "image": "images/studentGirl.jpeg",
      "name": "Sally Qasem"
    },
    {
      "id_status": false,
      "image": "images/studentBoy.jpeg",
      "name": "Basem Ahmad"
    },
  ];

  //users react
  List<Map<String, dynamic>> React = [
    {
      "id_status": false,
      "image": "images/studentGirl.jpeg",
      "name": "Maya Tamer"
    },
    {
      "id_status": false,
      "image": "images/studentBoy.jpeg",
      "name": "Ayham Yaser"
    },
    {
      "id_status": false,
      "image": "images/studentBoy.jpeg",
      "name": "Ahmad Ahmad"
    },
    {
      "id_status": false,
      "image": "images/studentGirl.jpeg",
      "name": "Dana Asem"
    },
    {
      "id_status": false,
      "image": "images/studentBoy.jpeg",
      "name": "Omar Thaer"
    },
  ];
  List<Map<String, dynamic>> _allUsers = [];
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      color: Colors.white,
      width: 400,
      height: 650,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 330,
              height: 330,
              //color: Colors.yellow,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.scaleDown,
                      image: AssetImage("images/teamGroups (1).jpeg"))),
              margin: EdgeInsets.all(20),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      //   width: 200,
                      height: 30,
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Add members from available posts :",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      //  width: 200,
                      height: 50,
                      //color: Colors.yellow,
                      child: DropdownButton<String>(
                        padding: EdgeInsets.only(left: 15),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        alignment: Alignment.center,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                            nameGroup = dropdownValue;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              "Flutter",
                            ),
                            value: "Flutter",
                            onTap: () {
                              _allUsers = Flutter;
                            },
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "React",
                            ),
                            value: "React",
                            onTap: () {
                              _allUsers = React;
                            },
                          ),
                        ],
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_drop_down_rounded),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Select All"),
                    Checkbox(
                        value: valuue,
                        onChanged: (valSelectAll) {
                          setState(() {
                            valuue = true;
                            for (var i = 0; i < _allUsers.length; i++) {
                              _allUsers[i]['id_status'] = true;
                            }
                          });
                        }),
                  ],
                )
              ],
            ),
            Container(
                height: 150,
                width: 411,
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.only(bottom: 10),
                color: Colors.amber,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: _allUsers.length,
                      itemBuilder: (context, index) => CheckboxListTile(
                            value: _allUsers[index]['id_status'],
                            onChanged: (val) {
                              setState(() {
                                _allUsers[index]['id_status'] = val!;
                              });
                            },

                            //key: ValueKey("1"),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                _allUsers[index]['image']),
                                            fit: BoxFit.cover))),
                                Text(
                                  _allUsers[index]['name'],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          )),
                )),
          ],
        ),
      ),
    ));
  }
}
