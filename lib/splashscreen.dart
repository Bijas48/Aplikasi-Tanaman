import 'package:appplant/mainscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightGreen[900],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SizedBox(
                  // margin: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height * 2 / 5,
                  width: MediaQuery.of(context).size.height * 1 / 3,
                  child: Image.asset(
                    "images/PohonAwal.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 13),
                      child: Text.rich(
                        TextSpan(
                            text: "Kenali Lingkungan anda ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: "lebih baik ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30)),
                            ]),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF558B2F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MainScreen();
                          }));
                        },
                        child: Text(
                          "Telusuri Sekarang!",
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
