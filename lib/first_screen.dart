import 'package:flutter/material.dart';
import 'package:vSafe/second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid-19 Safety tips"),
       backgroundColor: Color(0xFF053f5e),
      ),
      body: Container(
        color: Color(0xFF115173),
      // color: Color(0xFF053f5e),
        child: Column(children: <Widget>[
          SizedBox(height: 80.0),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 80.0,
              child: Card(
                color: Color(0xFFd1d4c9),
                child: Center(
                  child: Text(
                    'HOW TO PROTECT YOURSELF AND OTHERS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 80.0,
              child: Card(
                color: Color(0xFFd1d4c9),
                child: Center(
                  child: Text(
                    'WHO IS AT A HIGHER RISK?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 80.0,
              child: Card(
                color: Color(0xFFd1d4c9),
                child: Container(
                  child: Center(
                    child: Text(
                      'IF YOU ARE SICK',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 80.0,
              child: Card(
                color: Color(0xFFd1d4c9),
                child: Container(
                  child: Center(
                    child: Text(
                      'EMERGENCY WARNING SIGNS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          )
          //Mask()
        ]),
      ),
    );
  }
}
