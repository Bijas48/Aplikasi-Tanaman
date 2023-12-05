import 'package:appplant/profilesccreen.dart';
import 'package:flutter/material.dart';
import 'package:appplant/model/listPlant.dart';
import 'package:appplant/detailscreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 71,
          backgroundColor: Color(0xFF558B2F),
          title: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.lightGreen[900],
                    borderRadius: BorderRadius.circular(100)),
                child: Text("Kenali Sekitarmu")),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle_rounded),
              iconSize: 35,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ProfileScreen();
                }));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 3, color: Colors.black26),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.indigo[900]),
                              child: Image.asset(
                                "images/Cuaca.png",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 30, top: 23),
                              child: Text(
                                "Info Cuaca",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Text(
                              "Bandung",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "34 Derajat Celcius",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  color: Colors.white54,
                  height: constraints.minHeight,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    children: listPlant.map((place) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(place: place);
                          }));
                        },
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Image.network(
                                  place.imageUtama,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  place.name,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, bottom: 8.0),
                                child: Text(
                                  place.type,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
