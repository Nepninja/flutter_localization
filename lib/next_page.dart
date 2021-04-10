import 'package:flutter/material.dart';
import 'package:flutter_localization/custom_view.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  List languages = ["English", "French"];
  String lang = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  CustomView(
                    heading: "Professional History",
                    title: "River Tech",
                    subtitle: "Intern",
                    description: "Worked on small feature.",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomView(
                    heading: "Educational History",
                    title: "Harvard University",
                    subtitle: "Nov 2016 - Dec 2020",
                    description: "Specialized on computer science",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Skills",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Java, Flutter, Python, Html Css, SQLite",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomView(
                    heading: "Awards and Achivements",
                    title: "World Largest Hackathon",
                    subtitle: "Winner",
                    description: "Specialized on health care",
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: FlatButton(
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "Hire me!",
                      style: TextStyle(color: Color(0xff728def)),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff728def),
        elevation: 0,
        actions: [
          DropdownButton(
            dropdownColor: Colors.deepPurpleAccent[100],
            underline: SizedBox(),
            value: lang,
            onChanged: (value) {
              setState(() {
                lang = value;
              });
            },
            items: languages.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.white),
                ),
              );
            }).toList(),
          ),
        ],
      ),
      backgroundColor: Color(0xff728def),
    );
  }
}
