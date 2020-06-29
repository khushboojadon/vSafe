import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FiveScreen extends StatefulWidget {
  @override
  _FiveScreenState createState() => _FiveScreenState();
}

class _FiveScreenState extends State<FiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF115173),
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: Color(0xFF053f5e),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Details(),
           
           
          ],
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Card(
        color: Color(0xFFd1d4c9),
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding:
                        EdgeInsets.only(left: 25.0, top: 20.0, bottom: 10.0),
                    child: Text(
                      "Emergency Warning Signs",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    )),
                expanded: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        "If your symptoms become severe, call to get medical attention immediately. Warning signs include:Trouble breathing Persistent pain or pressure in the chest New confusion Inability to wake or stay awake Bluish lips or face",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 16.0),
                      ),
                    )
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

