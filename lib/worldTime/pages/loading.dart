import 'package:flutter/material.dart';
import 'package:flutter_for_raketa8/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // String time = 'loading';
  
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
      location: 'Berlin',
      flag: 'map.jpg',
      url: 'Europe/Berlin',
      isDayTime: false
    );
    await instance.getTime();

    // Ensure the widget is still mounted(установлен/смонтирован) before using the context
    // -- What is mounted?
    // mounted is a property in the State class that indicates whether the widget is
    // currently in the widget tree. If mounted is false, the context is no longer valid,
    // and attempting to use it (like calling Navigator.pushNamed) will result in errors.
    // -- Why Check mounted?
    // When an async operation (like await instance.getTime()) is in progress, the widget
    // might be removed from the widget tree (e.g., if the user navigates to another page).
    // The context becomes invalid after the widget is unmounted, so a check prevents
    // any operations dependent on context.
    if (mounted) {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime': instance.isDayTime,
      });
    }
    // print(instance.time);
    // setState(() {
    //   time = instance.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: const Center(
         child: SpinKitSpinningLines(
           color: Colors.white,
           size: 80.0,
         ),
      ),
    );
  }
}
