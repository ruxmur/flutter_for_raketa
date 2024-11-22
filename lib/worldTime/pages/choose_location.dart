import 'package:flutter/material.dart';
import 'package:flutter_for_raketa8/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/Moldova', location: 'Moldova', flag: 'moldova.png', isDayTime: true),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'berlin.jpg', isDayTime: true),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png', isDayTime: true),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'jakarta.jpg', isDayTime: true),
    WorldTime(url: 'Asia/Tokio', location: 'Tokio', flag: 'tokio.jpg', isDayTime: false),
    WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'dubai.jpg', isDayTime: false),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png', isDayTime: false),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png', isDayTime: false),
    WorldTime(url: 'Asia/Kenya', location: 'Kenya', flag: 'kenya.png', isDayTime: false),
    WorldTime(url: 'Asia/South_Korea', location: 'South Korea', flag: 'south_korea.png', isDayTime: false),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    // navigate to home screen
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[200],
        title: const Text('Chose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
