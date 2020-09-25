import 'package:flutter/material.dart';

import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 50, left: 15,),
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(),
                Column(
                  children: <Widget>[
                    Text(
                      'Ecstacks',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Active Status',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: drawerItems
                  .map(

                    (element) => Row(
                      // SizedBox(height: 10,),

                      children: <Widget>[
                        Container(
                          padding:EdgeInsets.only(bottom: 50),),

                        Icon(
                          element['icon'],
                          color: Colors.white,
                           size: 30,
                        ),
                        SizedBox(width: 20,),
                        Text(
                          element['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),

                      ],

                    ),
                  )
                  .toList(),
            ),
            Row(

              children: <Widget>[

                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 2,
                  height: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
