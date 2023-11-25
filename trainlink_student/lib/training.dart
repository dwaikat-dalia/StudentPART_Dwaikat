import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class traingingg extends StatelessWidget {
  const traingingg({super.key});

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
            "Training",
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
  bool containerVisible = false;
  bool containerVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Company(
              context,
              "Asal Technologies",
              "images/asal.jpeg",
              containerVisible,
              'University Training',
              '360',
              '4 months',
              'Pass',
              '10/10',
              '(Sep-2023)(Jan-2024)',
              () {
                setState(() {
                  print("yes clicked");
                  containerVisible = !containerVisible;
                });
              },
            ),
            Company(
                context,
                "ProGineer Technologies",
                "images/progineer.jpg",
                containerVisible2,
                'Out of university training',
                '100',
                '2 months',
                'Pass',
                '10/10',
                '(Mar-2023)(May-2023)', () {
              setState(() {
                print("yes clicked");
                containerVisible2 = !containerVisible2;
              });
            }),
            Container(
              width: 360,
              height: 360,

              // color: Colors.yellow,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/training.jpeg"))),
              margin: EdgeInsets.only(top: 125),
            )
          ],
        ),
      ),
    );
  }

  Widget Company(
    context,
    namecompany,
    image,
    containerVisible,
    _cTypeTrainText,
    _cnumberOfhoursText,
    _cmonthText,
    _cstateText,
    _cRangeText,
    _ctimelevelText,
    Function toggleVisibility,
  ) {
    final TextEditingController _cTypeTrain =
        TextEditingController(text: _cTypeTrainText);
    final TextEditingController _cnumberOfhours =
        TextEditingController(text: _cnumberOfhoursText);
    final TextEditingController _cmonth =
        TextEditingController(text: _cmonthText);
    final TextEditingController _cstate =
        TextEditingController(text: _cstateText);
    final TextEditingController _cRange =
        TextEditingController(text: _cRangeText);
    //_controllertimeyear
    final TextEditingController _ctimelevel =
        TextEditingController(text: _ctimelevelText);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        // height: 600,
        color: Colors.white,
        child: Column(
          children: [
            Container(
                width: 400,
                // height: 450,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.only(top: 15, left: 5),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 50,

                      // color: Colors.yellow,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(190),
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage(image))),
                      margin: EdgeInsets.all(10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            namecompany,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15, top: 5),
                            child: MaterialButton(
                              child: Text("Details"),
                              color: Color(0xff003566),
                              textColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              onPressed: () {
                                toggleVisibility();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: containerVisible,

                      //  padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Kinds of training : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Container(
                                width: 200,
                                child: TextField(
                                  //      enabled: StartYearState,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors
                                        .black, // Set the text color to green
                                  ),
                                  controller: _cTypeTrain,
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
                    ),
                    Visibility(
                      visible: containerVisible,
                      child: Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Number of Hours : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Container(
                                width: 200,
                                child: TextField(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors
                                        .black, // Set the text color to green
                                  ),
                                  controller: _cnumberOfhours,
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
                    ),
                    Visibility(
                      visible: containerVisible,
                      child: Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Timeframe : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Container(
                                width: 250,
                                //color: Colors.red,
                                child: TextField(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors
                                        .black, // Set the text color to green
                                  ),
                                  controller: _ctimelevel,
                                  // Optional: Style the text field
                                  decoration: InputDecoration(
                                    //   labelText: 'Field Label', // Change the label text if needed
                                    border: InputBorder
                                        .none, // Remove the default underline
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: containerVisible,
                      child: Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Training duration : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Container(
                                width: 200,
                                child: TextField(
                                  //   enabled: GYState,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors
                                        .black, // Set the text color to green
                                  ),
                                  controller: _cmonth,
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
                    ),
                    Visibility(
                      visible: containerVisible,
                      child: Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "State :",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Container(
                                width: 200,
                                child: TextField(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors
                                        .black, // Set the text color to green
                                  ),
                                  controller: _cstate,
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
                    ),
                    Visibility(
                      visible: containerVisible,
                      child: Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Range : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Container(
                                width: 200,
                                child: TextField(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors
                                        .black, // Set the text color to green
                                  ),
                                  controller: _cRange,
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
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
