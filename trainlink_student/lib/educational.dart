import 'package:flutter/material.dart';

class educational extends StatelessWidget {
  const educational({super.key});

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
            "Education",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                /*color: Colors.teal*/
                color: Color(0xff003566)),
          ),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool majorState = false;
  bool StartYearState = false;
  bool StudyStateState = false;
  bool GYState = false;
  bool CCState = false;
  bool GPAState = false;
  bool save = false;

  final TextEditingController _controllerMajor =
      TextEditingController(text: 'Computer Engineering');
  final TextEditingController _controllerYearJoin =
      TextEditingController(text: '2019');
  final TextEditingController _controllerStudyState =
      TextEditingController(text: 'Student');
  final TextEditingController _controllerGY = TextEditingController(text: '-');
  final TextEditingController _controllerCC =
      TextEditingController(text: '120');
  final TextEditingController _controllerGPA = TextEditingController(text: '-');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        // height: 600,
        color: Colors.white,
        child: Column(
          children: [
            Container(
                width: 400,
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.only(top: 20, left: 5),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Major : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Container(
                              width: 300,
                              child: TextField(
                                enabled: majorState,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .black, // Set the text color to green
                                ),
                                controller: _controllerMajor,
                                // Optional: Style the text field
                                decoration: InputDecoration(
                                  //   labelText: 'Field Label', // Change the label text if needed
                                  border: InputBorder
                                      .none, // Remove the default underline
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          Text(
                            "University Start Year : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Container(
                              width: 100,
                              child: TextField(
                                enabled: StartYearState,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .black, // Set the text color to green
                                ),
                                controller: _controllerYearJoin,
                                // Optional: Style the text field
                                decoration: InputDecoration(
                                  //   labelText: 'Field Label', // Change the label text if needed
                                  border: InputBorder
                                      .none, // Remove the default underline
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Study status : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Container(
                              width: 200,
                              child: TextField(
                                enabled: StudyStateState,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .black, // Set the text color to green
                                ),
                                controller: _controllerStudyState,
                                // Optional: Style the text field
                                decoration: InputDecoration(
                                  //   labelText: 'Field Label', // Change the label text if needed
                                  border: InputBorder
                                      .none, // Remove the default underline
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Graduation Year : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Container(
                              width: 200,
                              child: TextField(
                                enabled: GYState,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .black, // Set the text color to green
                                ),
                                controller: _controllerGY,
                                // Optional: Style the text field
                                decoration: InputDecoration(
                                  //   labelText: 'Field Label', // Change the label text if needed
                                  border: InputBorder
                                      .none, // Remove the default underline
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Completed credits:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Container(
                              width: 200,
                              child: TextField(
                                enabled: CCState,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .black, // Set the text color to green
                                ),
                                controller: _controllerCC,
                                // Optional: Style the text field
                                decoration: InputDecoration(
                                  //   labelText: 'Field Label', // Change the label text if needed
                                  border: InputBorder
                                      .none, // Remove the default underline
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          Text(
                            "GPA : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Container(
                              width: 200,
                              child: TextField(
                                enabled: GPAState,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .black, // Set the text color to green
                                ),
                                controller: _controllerGPA,
                                // Optional: Style the text field
                                decoration: InputDecoration(
                                  //   labelText: 'Field Label', // Change the label text if needed
                                  border: InputBorder
                                      .none, // Remove the default underline
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 110,
                            height: 40,
                            margin: EdgeInsets.only(left: 20, top: 25),
                            //         margin:
                            //EdgeInsets.only(bottom: 100, top: 10, left: 250),
                            // color: const Color.fromARGB(255, 210, 165, 218),
                            child: MaterialButton(
                              child: Text("Edit"),
                              color: Color(0xff003566),
                              textColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              onPressed: () {
                                setState(() {
                                  majorState = true;
                                  StartYearState = true;
                                  StudyStateState = true;
                                  GYState = true;
                                  CCState = true;
                                  GPAState = true;
                                  save = true;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 40,
                            margin: EdgeInsets.only(left: 20, top: 25),
                            //         margin:
                            //EdgeInsets.only(bottom: 100, top: 10, left: 250),
                            // color: const Color.fromARGB(255, 210, 165, 218),
                            child: MaterialButton(
                              child: Text("Save"),
                              disabledColor: Color.fromARGB(255, 171, 205, 236),
                              color: Color(0xff003566),
                              textColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              onPressed: save
                                  ? () {
                                      setState(() {
                                        majorState = false;
                                        StartYearState = false;
                                        StudyStateState = false;
                                        GYState = false;
                                        CCState = false;
                                        GPAState = false;
                                        save = false;
                                      });
                                    }
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              width: 272,
              height: 272,

              // color: Colors.yellow,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/educational.jpeg"))),
              margin: EdgeInsets.all(20),
            )
          ],
        ),
      ),
    );
  }
}
