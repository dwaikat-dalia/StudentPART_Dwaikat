import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trainlink/createGroup/intro_page1.dart';
import 'package:trainlink/createGroup/intro_page2.dart';
import 'package:trainlink/createGroup/intro_page3.dart';
import 'package:trainlink/createGroup/intro_page4.dart';
import 'package:trainlink/groupHomePage.dart';
import 'package:trainlink/Tabs/group.dart';

String? name = "Flutter Fall23";
String? members;

class createNewGroup extends StatelessWidget {
  const createNewGroup({super.key});

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
            "Create New Group",
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
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          onPageChanged: (Index) {
            setState(() {
              onLastPage = (Index == 3);
            });
          },
          controller: _controller,
          children: [IntroPage1(), IntroPage2(), IntroPage3(), IntroPage4()],
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    _controller.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Text(
                    "back",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
              SmoothPageIndicator(controller: _controller, count: 4),
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => groupHomePage()));
                        // print("yes");
                      },
                      child: Text(
                        "done",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ))
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Text(
                        "next",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
            ],
          ),
          alignment: Alignment(0, 0.75),
        )
      ],
    );
  }
}
