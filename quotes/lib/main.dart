import 'package:flutter/material.dart';

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
  List<String> quotes = [
    'The wisest man follow their own direction.',
    'Oh, I have sure slipped the surly bonds of Earth, put out my face and touched the face of God.',
    'The man who moves a mountain begins by carrying away small stones.'
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
              (quote) => Text(quote),
            )
            .toList(),
      ),
    );
  }
}
