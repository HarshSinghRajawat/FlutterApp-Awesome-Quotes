import 'dart:collection';

import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp(
    home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes=[

    Quote('Even if you fall on your face, you’re still moving forward. ','Victor Kiam'),
    Quote('Greatness is more than potential. It is the execution of that potential. Beyond the raw talent. You need the appropriate training. You need the discipline. You need the inspiration. You need the drive. ','Eric A. Burns'),
    Quote('We should be taught not to wait for inspiration to start a thing. Action always generates inspiration. Inspiration seldom generates action. ','Frank Tibolt'),
    Quote('Always keep your smile. That’s how I explain my long life. ','Jeanne Calment'),
    Quote('A person should design the way he makes a living around how he wishes to make a life. ','Charlie Byrd'),
    Quote('In everyone’s life, at some time, our inner fire goes out. It is then burst into flame by an encounter with another human being. We should all be thankful for those people who rekindle the inner spirit. ','Albert Schweitzer'),
    Quote('Success is following the pattern of life one enjoys most. ','Al Capp'),
    Quote('Life was meant to be lived, and curiosity must be kept alive. One must never, for whatever reason, turn his back on life. ','Eleanor Roosevelt')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes.map((quote)=>QuoteCard(
              quote: quote,
              delete:(){
                setState(() {
                  quotes.remove(quote);
                });
            }
          )).toList(),
        ),
      ),
    );
  }
}

