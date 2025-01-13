import 'package:flutter/material.dart';
import 'package:flutter_for_raketa8/worldTime/pages/choose_location.dart';
import 'package:flutter_for_raketa8/worldTime/pages/home.dart';
import 'package:flutter_for_raketa8/worldTime/pages/loading.dart';
import 'package:flutter_for_raketa8/flutterFormsTutorial/forms.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const Loading(),
    '/home': (context) => const Home(),
    '/location': (context) => const ChooseLocation(),
    '/forms': (context) => const Forms(),
  }
));

