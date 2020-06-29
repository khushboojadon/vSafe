import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FourScreen extends StatefulWidget {
  @override
  _FourScreenState createState() => _FourScreenState();
}

class _FourScreenState extends State<FourScreen> {
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
            Details1(),
            Details2(),
           
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
                      "Separate yourself from other people",
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
                        "Avoid sharing personal household items, such as dishes, drinking glasses, cups, eating utensils, towels or bedding. Wash items thoroughly after using them with soap and hot water.On your own, clean and disinfect high-touch surfaces daily in your sick room and designated bathroom. Have a healthy household member do the same for surfaces in other parts of the home. If you are sharing a bathroom, clean and disinfect it after each use.",
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

class Details1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
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
                      "Stay home and call your doctor",
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
                        "Stay home and call your doctor for medical advice and before visiting a medical office. Older adults and people of any age with serious underlying medical conditions should call a health care provider as soon as symptoms start.",
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

class Details2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
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
                      "Wear a cloth face cover",
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
                        "Wear a cloth face cover if you are around other people (e.g., sharing a room or vehicle) and before you enter a health care provider’s office.",
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

