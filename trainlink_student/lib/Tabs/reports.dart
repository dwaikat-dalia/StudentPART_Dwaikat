import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'dart:io';

import 'package:file_picker/file_picker.dart';

class Reports22 extends StatefulWidget {
  @override
  _Reports22State createState() => _Reports22State();
}

bool submit = true;

class _Reports22State extends State<Reports22> {
  File? _pickedFile;

  String dropdownValue = "Flutter";
  String dropdownValueWeeks = "Week1";
  String dropdownValueStudents = "student1";
  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      setState(() {
        _pickedFile = File(result.files.single.path!);
      });
    }
  }

  void _deleteFile() {
    setState(() {
      _pickedFile = null;
      submit = false;
    });
  }

  bool get isFileSelected => _pickedFile != null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  Container(
                    width: 411,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Submit your reports ",
                        style: TextStyle(
                            color: Color(0xff003566),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    //  color: Colors.amber,
                  ),
                  Divider(
                    color: Color(0xffffc300),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: 200,
                        height: 50,
                        // color: Colors.blue,+
                        child: DropdownButton<String>(
                          padding: EdgeInsets.only(left: 0),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16),
                          alignment: Alignment.center,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValueWeeks = newValue!;
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              onTap: () {
                                setState(() {
                                  submit = true;
                                });
                              },
                              child: Text(
                                "Week 1",
                              ),
                              value: "Week1",
                            ),
                            DropdownMenuItem(
                              onTap: () {
                                setState(() {
                                  submit = false;
                                });
                              },
                              child: Text(
                                "Week 2",
                              ),
                              value: "Week2",
                            ),
                            DropdownMenuItem(
                              child: Text(
                                "Week 3",
                              ),
                              value: "Week3",
                            ),
                            DropdownMenuItem(
                              child: Text(
                                "Week 4",
                              ),
                              value: "Week4",
                            ),
                            DropdownMenuItem(
                              child: Text(
                                "All Weeks",
                              ),
                              value: "AllWeeks",
                            )
                          ],
                          value: dropdownValueWeeks,
                          icon: Icon(Icons.arrow_drop_down_rounded),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(14.0),
                              margin: EdgeInsets.only(left: 10),
                              child: Center(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.amber), // Change color here
                                  ),
                                  onPressed: () {
                                    // Show the dialog when the button is clicked
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return MyDialog(); // Your custom dialog content goes here
                                      },
                                    );
                                  },
                                  child: Text(
                                    'View comments',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 390,
                    height: 1110,
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Text("Status Report :"),
                              submit
                                  ? Text("Submitted",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold))
                                  : Text("Not Submitted",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(96, 255, 196, 0),
                              borderRadius: BorderRadius.circular(20)),
                          height: 150,
                          width: 400,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.baseline,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Student id : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "11923878",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Student name : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "Dalia Hamed Saleem Dwaikat",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Week : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Training place : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "Asal Comapny",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(96, 255, 196, 0),
                              borderRadius: BorderRadius.circular(60)),
                          height: 50,
                          width: 410,
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Weekly working days :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              CounterItem(0, 6, 1)

                              // TextFormField()
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(96, 255, 196, 0),
                              borderRadius: BorderRadius.circular(60)),
                          height: 50,
                          width: 410,
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Weekly office hours :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              CounterItem(0, 48, 2)

                              // TextFormField()
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(96, 255, 196, 0),
                              borderRadius: BorderRadius.circular(60)),
                          height: 50,
                          width: 410,
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Weekly field working hours :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              CounterItem(0, 48, 2)

                              // TextFormField()
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(96, 255, 196, 0),
                              borderRadius: BorderRadius.circular(60)),
                          height: 50,
                          width: 410,
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Weekly absence hours :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              CounterItem(0, 48, 2)

                              // TextFormField()
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(96, 255, 196, 0),
                              borderRadius: BorderRadius.circular(20)),
                          height: 150,
                          width: 410,
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "If absent, provide reason :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Container(
                                width: 300,
                                height: 120,
                                // color: Colors.red,
                                child: TextField(
                                  maxLength: 100,
                                  maxLines: 5,
                                  minLines: 5,
                                  keyboardType: TextInputType.name,
                                ),
                              ),

                              // TextFormField()
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(96, 255, 196, 0),
                              borderRadius: BorderRadius.circular(20)),
                          height: 300,
                          width: 410,
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Weekly training summary :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Container(
                                width: 300,
                                height: 270,
                                // color: Colors.red,
                                child: TextField(
                                  maxLength: 1800,
                                  maxLines: 10,
                                  minLines: 10,
                                  keyboardType: TextInputType.name,
                                ),
                              ),

                              // TextFormField()
                            ],
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 50,
                          margin:
                              EdgeInsets.only(bottom: 100, top: 10, left: 250),
                          // color: const Color.fromARGB(255, 210, 165, 218),
                          child: MaterialButton(
                            child: Text("Submit"),
                            color: Colors.amber,
                            textColor: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  )
                ]))));
  }
}

int counterAdd = 0;
bool? AddFlag = false;
bool? RemoveFlag = false;

class CounterItem extends StatefulWidget {
  int rangMin;
  int rangMax;
  int maxLengthh;
  CounterItem(this.rangMin, this.rangMax, this.maxLengthh, {Key? key})
      : super(key: key);

  @override
  State<CounterItem> createState() =>
      _CounterItemState(rangMin, rangMax, maxLengthh);
}

class _CounterItemState extends State<CounterItem> {
  int min;
  int max;
  int maxlen;
  _CounterItemState(this.min, this.max, this.maxlen);
  final TextEditingController _controller = TextEditingController(text: "0");

  String _textFieldValue = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildCounterButton(true, Icons.remove_outlined, () {
            RemoveFlag = true;
            setState(() {
              if (counterAdd == min) {
                counterAdd = min;
                _controller.text = counterAdd.toString();
              } else {
                counterAdd--;
                _controller.text = counterAdd.toString();

                print(counterAdd);
              }
            });
          }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
                width: 30,
                //       color: Colors.red,
                padding: EdgeInsets.only(top: 6),
                height: 50,
                // padding: EdgeInsets.all(10),
                child: TextField(
                    // maxLength: maxlen,
                    keyboardType: TextInputType.number,
                    controller: _controller,
                    decoration: InputDecoration(
                      //    labelText: _controller.text,
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      // Update the text value immediately
                      setState(() {
                        int parsedValue = int.tryParse(value) ?? 0;
                        if (parsedValue <= max && parsedValue >= min) {
                          setState(() {
                            _controller.text = value;
                          });
                        } else {
                          setState(() {
                            _controller.text = "0";
                          });
                        }
                      });
                    })),
          ),
          _buildCounterButton(false, Icons.add_outlined, () {
            AddFlag = true;
            setState(() {
              if (counterAdd == max) {
                counterAdd = max;
                _controller.text = counterAdd.toString();
              } else {
                counterAdd++;
                _controller.text = counterAdd.toString();

                print(counterAdd);
              }
            });
          }),
        ],
      ),
    );
  }

  InkWell _buildCounterButton(bool left, IconData icoon, VoidCallback onTap,
      [bool active = true]) {
    return InkWell(
      onTap: !active ? null : onTap,
      child: Container(
          decoration: BoxDecoration(
              color: active ? Colors.white : Colors.grey,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(left ? 20 : 0),
                right: Radius.circular(left ? 0 : 20),
              )),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
          child: Icon(icoon)),
    );
  }
}
/*
Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('name'),
        content: TextField(
          decoration: InputDecoration(hintText: 'Enter your '),
        ),
        actions: [TextButton(onPressed: () {}, child: Text('ok'))],
      ),
    );
*/

class MyDialog extends StatelessWidget {
  final TextEditingController _controller =
      TextEditingController(text: 'Good jop, keep going');
  final TextEditingController _controller2 =
      TextEditingController(text: 'True information , keep going');

  @override
  Widget build(BuildContext context) {
    return Dialog(
      // Your dialog content goes here
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            submit
                ? Container(
                    width: 300,
                    height: 320,
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          color: Colors.amber.shade100,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        border: Border.all(
                                            //    color: Color(0xff003566),
                                            style: BorderStyle.solid,
                                            color: Colors.grey.shade400),
                                        image: const DecorationImage(
                                            image:
                                                AssetImage("images/najah.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    child: Text(
                                      "NNU : ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    padding: EdgeInsets.only(left: 10),
                                  ),
                                ],
                              ),
                              Container(
                                height: 80,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                //color: Colors.red,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: TextField(
                                    maxLines: 5,
                                    minLines: 5,
                                    controller: _controller,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      // Optionally, you can customize the appearance of the text field
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                    ),
                                    enabled:
                                        false, // Set to false to disable the TextField
                                    /* decoration: InputDecoration(
                                      // Optionally, you can customize the appearance of the disabled text
                                      disabledBorder: OutlineInputBorder(
                                          // borderSide: BorderSide(color: Colors.grey),
                                          ),
                                    ),*/
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          height: 150,
                          color: Colors.amber.shade100,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        border: Border.all(
                                            //    color: Color(0xff003566),
                                            style: BorderStyle.solid,
                                            color: Colors.grey.shade400),
                                        image: const DecorationImage(
                                            image:
                                                AssetImage("images/Harri.jpeg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    child: Text(
                                      "Harri : ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    padding: EdgeInsets.only(left: 10),
                                  ),
                                ],
                              ),
                              Container(
                                height: 80,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                //color: Colors.red,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: TextField(
                                    maxLines: 5,
                                    minLines: 5,
                                    controller: _controller2,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      // Optionally, you can customize the appearance of the text field
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                    ),
                                    enabled:
                                        false, // Set to false to disable the TextField
                                    /* decoration: InputDecoration(
                                      // Optionally, you can customize the appearance of the disabled text
                                      disabledBorder: OutlineInputBorder(
                                          // borderSide: BorderSide(color: Colors.grey),
                                          ),
                                    ),*/
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ))
                : Text('No comments Available'),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.amber), // Change color here
              ),
              onPressed: () {
                // Close the dialog when the button is clicked
                Navigator.of(context).pop();
              },
              child: Text(
                'Close',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
