import 'package:flutter/material.dart';
import 'package:trainlink/Tabs/group.dart';
import 'package:trainlink/Tabs/home.dart';
import 'package:trainlink/Tabs/menu.dart';
import 'package:trainlink/Tabs/notifications.dart';
import 'package:trainlink/Tabs/reports.dart';
import 'package:trainlink/SearchStudent.dart';
import 'package:trainlink/masseges.dart';

void main() {
  return runApp(MyApp(0));
}

class MyApp extends StatelessWidget {
  int selectedPage;
  MyApp(this.selectedPage);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.amber),
      title: 'Facebook Clone',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(selectedPage),
    );
  }
}

class MyHomePage extends StatefulWidget {
  int selectedPage;
  MyHomePage(this.selectedPage);
  @override
  _MyHomePageState createState() => _MyHomePageState(selectedPage);
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPage;
  _MyHomePageState(this.selectedPage);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: selectedPage,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(40.0),
                    image: const DecorationImage(
                        image: AssetImage("images/TLp.png"),
                        fit: BoxFit.cover)),
              ),
              Text(
                "TrainLink",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    /*color: Colors.teal*/
                    color: Color(0xff003566)),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SearchStudent()));
              },
              icon: Icon(Icons.search),
              color: Color(0xff003566),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => masseges()));
              },
              icon: Icon(Icons.message),
              color: Color(0xff003566),
            ),
          ],
          //Tab Bar
          bottom: const TabBar(
            //isScrollable: true,
            unselectedLabelColor: Color(0xff003566),
            indicatorColor: Color(0xffffc300),
            labelColor: Color(0xffffc300),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  size: 28,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.groups,
                  size: 28,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications_none,
                  size: 28,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.task_outlined,
                  size: 28,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.menu,
                  size: 28,
                ),
              ),
            ],
          ),
        ),

        //Tab Bar View
        body: TabBarView(
          children: <Widget>[
            HomeScreen(),
            GroupScreen(),
            Notification22(),
            Reports22(),
            Menu(),
          ],
        ),
      ),
    );
  }
}
