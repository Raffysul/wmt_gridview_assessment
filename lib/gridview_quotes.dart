import 'package:flutter/material.dart';

class Quotes {
  final String quoteview;

  const Quotes({
    required this.quoteview,
  });
}

class MyQuotes extends StatefulWidget {
  const MyQuotes({Key? key}) : super(key: key);

  @override
  State<MyQuotes> createState() => _MyQuotesState();
}

class _MyQuotesState extends State<MyQuotes> {
  List<Quotes> quote = [
    const Quotes(
      quoteview: 'The harder you work, the better you get.',
    ),
    const Quotes(
      quoteview:
      'The starting point of all achievement is desire and doggedness.',
    ),
    const Quotes(
      quoteview:
      'Learn as if you will live forever, live like you will die tomorrow.',
    ),
    const Quotes(
      quoteview:
      'It is better to fail in originality than to succeed in imitation.',
    ),
    const Quotes(
      quoteview: 'Either you run the day or the day runs you.',
    ),
    const Quotes(
      quoteview: 'Alone we can do so little, together we can do so much.',
    ),
    const Quotes(
      quoteview:
      'Life is like riding a bicycle. To keep your balance you must keep moving.',
    ),
    const Quotes(
      quoteview:
      'The greater the difficulty, the more the glory in surmounting it.',
    ),
    const Quotes(
      quoteview:
      'If you  change the way you look at things, the things you look at change.',
    ),
    const Quotes(
      quoteview: 'Resilience is when you address uncertainty with flexibility.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My Quotes'),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: quote.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            final quotes = quote[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
                child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        quotes.quoteview,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
