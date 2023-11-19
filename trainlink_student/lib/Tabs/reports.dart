import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';

class Reports22 extends StatefulWidget {
  @override
  _Reports22State createState() => _Reports22State();
}

class _Reports22State extends State<Reports22> {
  String dropdownValue = "Flutter";
  String dropdownValueWeeks = "Week1";
  String dropdownValueStudents = "student1";

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
                        "Reports",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
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
                              child: Text(
                                "Week 1",
                              ),
                              value: "Week1",
                            ),
                            DropdownMenuItem(
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
                    ],
                  ),
                  Container(
                      width: 411,
                      //  height: 300,
                      //color: Colors.green,
                      child: SingleChildScrollView(
                          child: tabelColumn(
                              dropdownValueStudents, dropdownValueWeeks))

                      /* Column(children: [
                      TabelReports("Ahmad Khalel", "www.report1,com",
                          "Good JOP!Keep Going", true, false),
                      TabelReports("Ahmad Khalel", "www.report1,com",
                          "Good JOP!Keep Going", true, false),
                    ]),*/
                      )
                ]))));
  }
}

DropdownMenuItem<String> weeksContent(
    dropdownValueWeeks, dropdownValueStudents) {
  if (dropdownValueWeeks == "AllWeeks" &&
      dropdownValueStudents == "AllStudent") {
    print("yes");
    //dropdownValueWeeks = "Week1";
    return DropdownMenuItem(
      child: Text(
        "-Disabeled",
        style: TextStyle(color: Colors.red),
      ),
      value: "AllWeeks",
      onTap: () {
        IgnorePointer(
          ignoring: true,
        );
      },
    );
  } else {
    return DropdownMenuItem(
      child: Text(
        "All Weeks",
      ),
      value: "AllWeeks",
    );
    ;
  }
}

DataTable tabelColumn(dropdownValueStudents, dropdownValueWeeks) {
  if (dropdownValueWeeks == "AllWeeks") {
    // print("yes");
    return DataTable(columns: [
      DataColumn(label: Text('Reports')),
      DataColumn(label: Text('Approval?')),
    ], rows: [
      TabelReports(
          dropdownValueStudents,
          dropdownValueWeeks,
          "Ahmad Khalel",
          "www.report1,com",
          "Good JOP!Keep Going",
          true,
          true,
          "www.reportsAhmad.com"),
      TabelReports(
          dropdownValueStudents,
          dropdownValueWeeks,
          "Ahmad Khalel",
          "www.report2,com",
          "Good JOP!Keep Going",
          true,
          true,
          "www.reportsAhmad.com"),
      TabelReports(
          dropdownValueStudents,
          dropdownValueWeeks,
          "Ahmad Khalel",
          "www.report3,com",
          "Good JOP!Keep Going",
          true,
          false,
          "www.reportsAhmad.com"),
    ]);
  } else {
    return DataTable(columns: [
      DataColumn(label: Text('Report')),
      DataColumn(label: Text('Approval?')),
    ], rows: [
      TabelReports(
          dropdownValueStudents,
          dropdownValueWeeks,
          "Ahmad Khalel",
          "www.report1,com",
          "Good JOP!Keep Going",
          true,
          true,
          "www.reportsAhmad.com"),
    ]);
  }
}

DataRow TabelReports(dropdownValueStudents, dropdownValueWeeks, name, report,
    comment, seeUniv, seeCompany, uriReportStudent) {
  Color color;
  if (seeUniv && seeCompany) {
    color = Colors.green;
  } else {
    color = Colors.red;
  }
  if (dropdownValueStudents == "AllStudent" &&
      dropdownValueWeeks == "AllWeeks") {
    return DataRow(cells: [
      DataCell(Text(name)),
      DataCell(Text(uriReportStudent)),
    ]);
  }
  if (dropdownValueStudents == "AllStudent") {
    return DataRow(cells: [
      DataCell(Text(name)),
      DataCell(Text(report)),
      DataCell(Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.remove_red_eye_outlined,
              color: color,
            ),
          ),
        ],
      ))
    ]);
  } else {
    return DataRow(cells: [
      DataCell(Text(report)),
      DataCell(Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.remove_red_eye_outlined,
              color: color,
            ),
          ),
        ],
      ))
    ]);
  }
}
