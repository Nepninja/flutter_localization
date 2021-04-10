import 'package:flutter/material.dart';
import 'package:flutter_localization/next_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/manedited.jpg'),
                radius: 80,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Andrew Mathew",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Frontend Developer",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/linkedin.png',
                  height: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "linkedin.com/in/andy09",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "andy09@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NextPage()));
              },
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
              shape: CircleBorder(
                  side: BorderSide(width: 1.0, color: Colors.white)),
            ),
            Text(
              "Know me more",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xff728def),
    );
  }
}
