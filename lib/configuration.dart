import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryColor = Color(0xff416d6d);

List<Map> categories = [
  {'name': 'Cat', 'iconPath': 'images/cat.png'},
  {'name': 'Dog', 'iconPath': 'images/dog.png'},
  {'name': 'Horse', 'iconPath': 'images/horse.png'},
  {'name': 'Parrot', 'iconPath': 'images/parrot.png'},
  {'name': 'Rabbit', 'iconPath': 'images/rabbit.png'},
];

List<Map> drawerItems = [
  {'title': 'Adoption', 'icon': FontAwesomeIcons.paw},

  {'title': 'Donation', 'icon': Icons.mail},
  {'title': 'Add Pet', 'icon': FontAwesomeIcons.plus},
  {'title': 'Favorites', 'icon': Icons.favorite},
  {'title': 'Donation', 'icon': FontAwesomeIcons.dollarSign,},
  {'title': 'Profile', 'icon': FontAwesomeIcons.userAlt},
];

List<BoxShadow> listShadow = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 30,
    offset: Offset(0, 10),
  ),
];
