import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Adrian Kusuma",
              style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "iOS & Android Developer",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                letterSpacing: 2.5,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 19.0,
              width: 160.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.lightGreen[900],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      '+62 888 7777 6666',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.lightGreen[900]),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.lightGreen[900],
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'xxx@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.lightGreen[900]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF558B2F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child: Text(
                    "Kembali",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
