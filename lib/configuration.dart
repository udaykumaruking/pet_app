import 'package:flutter/material.dart';

Color primaryColor = Color(0xff416d6d);

List<Map> categories = [
  {'name': 'Cat', 'iconPath': 'images/cat.png'},
  {'name': 'Dog', 'iconPath': 'images/dog.png'},
  {'name': 'Horse', 'iconPath': 'images/horse.png'},
  {'name': 'Parrot', 'iconPath': 'images/parrot.png'},
  {'name': 'Rabbit', 'iconPath': 'images/rabbit.png'},
];

List<BoxShadow> listShadow = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 30,
    offset: Offset(0, 10),
  ),
];
