import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
    home: Home()
));


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),

      body: Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // textBaseline: TextBaseline.alphabetic,
            children: [
              const Row(
                children: [
                  Text('lea'),
                  Text(' seydoux'),
                ],
              ),

              Padding( //use from the yellow lightbolb 'wrap with padding' command
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.grey[300],
                  child: const Text('one'),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.grey[400],
                  child: const Text('two'),
                ),
              Container(
                padding: const EdgeInsets.all(40),
                color: Colors.grey[500],
                child: const Text('three'),
              ),

              ElevatedButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.deepPurple[200]),
                ),
                icon: const Icon(Icons.mail),
                label: const Text('mail me'),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.deepPurple[200]),
                  ),
                  child: const Text('click me'),
                ),
              ),
              IconButton(
                onPressed: () {
                  print('you clicked me');
                },
                icon: const Icon(Icons.alternate_email),
                color: Colors.deepPurple[200],
              ),
              Center(
                child: Icon(
                  Icons.airport_shuttle,
                  color: Colors.deepPurple[200],
                  size: 100,
                ),
              ),
              Center(
                child: IconButton(
                  onPressed: () {
                    print('you clicked me');
                  },
                  icon: const Icon(Icons.alternate_email),
                  color: Colors.deepPurple[200],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                margin: const EdgeInsets.all(50),
                color: Colors.grey[300],
                child: const Text('Hello'),
              ),
              const Center(
                child: Image(
                    image: AssetImage('assets/flamingo.jpg')
                ),
              ),
              Center(
                  child: Image.asset('assets/flamingo.jpg')
              ),
            ]
          ),
      ),

      //  body: Container(
      //   padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
      //   margin: const EdgeInsets.all(50),
      //   color: Colors.grey[300],
      //   child: const Text('Hello'),
      // ),
      // body: Center(
      //   child: IconButton(
      //     onPressed: () {
      //       print('you clicked me');
      //     },
      //     icon: const Icon(Icons.alternate_email),
      //     color: Colors.deepPurple[200],
      //   )
      // ),
      // body: Center(
      //   child: Icon(
      //     Icons.airport_shuttle,
      //     color: Colors.deepPurple[200],
      //     size: 100,
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {},
      //     style: ButtonStyle(
      //       backgroundColor: WidgetStateProperty.all(Colors.deepPurple[200]),
      //     ),
      //     child: const Text('click me'),
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton.icon(
      //     onPressed: () {},
      //     style: ButtonStyle(
      //       backgroundColor: WidgetStateProperty.all(Colors.deepPurple[200]),
      //     ),
      //     icon: const Icon(
      //       Icons.mail
      //     ),
      //     label: const Text('mail me')
      //   ),
      // ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        // backgroundColor: Colors.deepPurpleAccent[50],
        child: const Text('click'),
      ),
    );
  }
}

