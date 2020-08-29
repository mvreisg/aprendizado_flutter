import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(
      MaterialApp(
        home: QuoteList(),
      ),
    );

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      author: 'Euripides',
      text: 'The wisest man follow their own direction',
    ),
    Quote(
      author: 'John Gillespie Magee, Jr.',
      text:
          'Oh, I have slipped the surly bonds of Earth, put out my face and touched the face of God',
    ),
    Quote(
      author: 'Confucius',
      text: 'The man who moves a mountain begins by carrying away small stones',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map(
              (quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
