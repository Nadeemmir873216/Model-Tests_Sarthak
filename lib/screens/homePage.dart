import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import "package:logger/logger.dart";

import '../widgets/GenerateReportWidget.dart';
import '../widgets/alzehimer_test.dart';
import '../widgets/pneumonia_test.dart';
import '../widgets/top_container.dart';

final logger = Logger();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<List<Color>> bannerCards = [
  [
    Color(0xffa1d4ed),
    Color(0xffc0eaff),
  ],
  [
    Color(0xffb6d4fa),
    Color(0xffcfe3fc),
  ],
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      TopContainer(
        height: 200,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu, color: Color(0xFF0D253F), size: 30.0),
                  Icon(Icons.search, color: Color(0xFF0D253F), size: 25.0),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Color(0xFF0D253F),
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        'assets/images/xRay_photo.png',
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Sourav Suman',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Color(0xFF0D253F),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'App Developer',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black45,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
      ),
      Container(
        padding: EdgeInsets.only(left: 23, bottom: 10),
        alignment: Alignment.centerLeft,
        child: Text(
          "We care for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      GenerateReportWidget(),
      Container(
        padding: EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        child: Text(
          "Specialists",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      Container(
          height: 200,
          padding: EdgeInsets.only(top: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [PneumoniaTest(), AlzheimerTest()],
          ))
    ]));
  }
}
