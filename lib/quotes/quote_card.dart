import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote; //variable
  // VoidCallback: It is a predefined type alias
  // in Dart for void Function(). Using this instead
  // of Function ensures that your callback function
  // matches the required signature for onPressed.
  // Why use VoidCallback?: The ? means the callback
  // is nullable. It can be helpful when you might
  // want to provide a null value, but in your case,
  // since delete is a required parameter, using
  // VoidCallback without the ? is fine.
  final VoidCallback delete;
  const QuoteCard({super.key, required this.quote, required this.delete }); //constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey[500]
              ),
            ),
            const SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.blueGrey[600]
              )
            ),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: delete,
              label: const Text('delete icon'),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
