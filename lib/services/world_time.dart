import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  late String location; // location name for the UI
  late String time; // time in that location
  late String flag; // url to assets flag icon
  late String url; // location url for api endpoint
  bool isDayTime; // true or false is daytime or not

  // constructor
  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
    required this.isDayTime
  });

  Future<void> getTime() async {

    try {
      // make the request
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // print(data);

      // get properties from data
      String datetime = data['datetime'];
      // substring - to remove from the result '+' example +01:00
      String offset = data['utc_offset'].substring(1,3);
      // print(datetime);
      // print(offset);

      // create a DateTime object
      DateTime now = DateTime.parse(datetime);
      // int.parse to convert string to int
      now = now.add(Duration(hours: int.parse(offset)));

      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      // set the time property
      time = DateFormat.jm().format(now);

      // example 2
      // // the link is from here https://jsonplaceholder.typicode.com/
      // Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
      // Map data = jsonDecode(response.body);
      // print(data);

      // example 1
      // // simulate network request for a username
      // // await - is a function as in JS that is waiting
      // // the selected function to make it first then others
      // String username = await Future.delayed(Duration(seconds: 3), () {
      //   return 'cucu';
      // });
      //
      // // simulate network request to get bio of the username
      // String bio = await Future.delayed(Duration(seconds: 2), () {
      //   return 'cucos, cu creasta rosie, rau';
      // });
      //
      // print('$username - $bio');
    }
    catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}