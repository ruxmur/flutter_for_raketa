import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: NinjaCard()));

class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        title: const Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[100],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/batman.jpg'),
                radius: 40,
              ),
            ),
            Divider(height: 60, color: Colors.grey[500]),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Bruce Wayne',
              style: TextStyle(
                color: Colors.grey[1000],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '8',
              style: TextStyle(
                color: Colors.grey[1000],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[300]),
                const SizedBox(width: 5),
                Text('brucewayne@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 18,
                      letterSpacing: 1,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
