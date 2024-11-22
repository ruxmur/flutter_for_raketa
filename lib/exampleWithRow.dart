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
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     const Text('hello world'),
        //     TextButton(
        //       onPressed: () {},
        //       style: ButtonStyle(
        //         backgroundColor: WidgetStateProperty.all(Colors.deepPurple[300]), // Text color
        //       ),
        //       child: const Text('Click Me'),
        //     ),
        //     Container(
        //       color: Colors.deepPurple[100],
        //       padding: const EdgeInsets.all(30),
        //       child: const Text('inside container'),
        //     ),
        //   ],
        // ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset('assets/flamingo.jpg'),
            ),
            Expanded( // 'wrap with widget' command from lightbolb
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(30),
                color: Colors.grey[100],
                child: const Text('1'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(30),
                color: Colors.grey[200],
                child: const Text('2'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30),
                color: Colors.grey[300],
                child: const Text('3'),
              ),
            ),
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        // backgroundColor: Colors.deepPurpleAccent[50],
        child: const Text('click'),
      ),
    );
  }
}

