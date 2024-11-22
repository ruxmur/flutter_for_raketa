import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: NinjaCard()));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

// The key difference between StatefulWidget and StatelessWidget in Flutter is:
//
// StatelessWidget: Immutable; it doesn't change its state or appearance once built.
// Suitable for UI elements that remain static (e.g., a label or icon).

// StatefulWidget: Mutable; it can rebuild itself in response to state changes.
// Ideal for dynamic or interactive UI elements (e.g., buttons that change color, forms, or animations).
// Stateless widgets use less memory, while stateful widgets are needed for dynamic behavior.

//   // this is rebuilding the widget from
//   // the bottom so many times as you want
//   // for example 3
//   int counter = 3;

// state object
class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.blueGrey[200],
        child: const Icon(Icons.add),
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
            const SizedBox(height: 30),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$ninjaLevel',
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

