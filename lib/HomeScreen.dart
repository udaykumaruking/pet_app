//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/screen2.dart';

import 'configuration.dart';

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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrawer ? 40 : 0),
        color: Colors.white,
      ),
      transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
        ..scale((scaleFactor)),
      duration: Duration(milliseconds: 250),
      child: SingleChildScrollView(
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
                              color: primaryColor,
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
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(color: primaryColor),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                  hintText: "Search Pet",
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          // height: 50,
                          // width: 50,
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: listShadow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Text(categories[index]['name'])
                      ],
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: listShadow,
                            ),
                            margin: EdgeInsets.only(top: 40),
                          ),
                          Align(
                            child: Hero(
                                tag: 1,
                                child: Image.asset('images/pet-cat2.png')),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: listShadow,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(

                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 25,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Sala",
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                    ),
                                    Icon(Icons.add),
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Text('Abyssinan Cat'),
                                SizedBox(height: 15,),
                                Text('2 Years Old'),
                                SizedBox(height: 15,),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.location_on),
                                    Text('Distance: 7.5km'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: listShadow,
                          ),
                          margin: EdgeInsets.only(top: 40),

                        ),
                        Align(
                          child: Image.asset('images/pet-cat1.png'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 240,
                      margin: EdgeInsets.only(top: 60, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: listShadow,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Container(

                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 25,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Sala",
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  Icon(Icons.add),
                                ],
                              ),
                              SizedBox(height: 15,),
                              Text('Abyssinan Cat'),
                              SizedBox(height: 15,),
                              Text('2 Years Old'),
                              SizedBox(height: 15,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on),
                                  Text('Distance: 7.5km'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
