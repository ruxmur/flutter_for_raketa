import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';  // 5. import the new file

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  // const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken.'),
    Quote(author: 'Johnny Depp', text: 'I have nothing to declare except my genius.'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple.'),
  ];


  // // 3. this function is unnecessary then,
  // // we can simplify the code by removing this fn and
  // // moving QuoteCard(quote: quote) directly to the body content:
  // // instead of: quotes.map((quote) => quoteTemplate(quote)).toList(),
  // // we have: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
  // Widget quoteTemplate(quote) {
  //   // 1. in stead of coding the card we can create a widget for it
  //   // throw the 'flutter online button'
  //   // (select the Card refactor to widget) voilà:
  //   // 2. now the Card function automatically is moved below
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[500],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),

        // = children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );
  }
}


// 4. so now we need to move this class to the new file 'quote_card.dart'
// class QuoteCard extends StatelessWidget {
//
//   final Quote quote; //variable
//   const QuoteCard({super.key,  required this.quote }); //constructor
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               quote.text,
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.blueGrey[500]
//               ),
//             ),
//             const SizedBox(height: 6),
//             Text(
//               quote.author,
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.blueGrey[600]
//               )
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
