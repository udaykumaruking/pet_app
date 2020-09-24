import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffSet = 0;
  double yOffSet = 0;
  double scaleFactor = 1;

  bool isDrawer = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
          ..scale((scaleFactor)),
        duration: Duration(milliseconds: 250),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isDrawer
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              xOffSet = 0;
                              yOffSet = 0;
                              scaleFactor = 1;
                              isDrawer = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xOffSet = 230;
                              yOffSet = 150;
                              scaleFactor = 0.6;
                              isDrawer = true;
                            });
                          },
                        ),
                  Column(
                    children: <Widget>[
                      Text("Location"),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.location_on,
                              color: Colors.green,
                            ),
                          ),
                          Text("Warangal"),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
            )
          ],
        ));
  }
}
