import 'package:flutter/material.dart';
import 'package:flutter_for_raketa8/worldTime/pages/choose_location.dart';
import 'package:flutter_for_raketa8/worldTime/pages/home.dart';
import 'package:flutter_for_raketa8/worldTime/pages/loading.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation()
  }
));

