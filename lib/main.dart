import 'package:flutter/material.dart';


void main() => runApp(QuoteApp());

class QuoteApp extends StatefulWidget {
  const QuoteApp({ Key? key }) : super(key: key);

  @override
  _QuoteAppState createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {


  List quotes = [
    "Spread love everywhere you go. Let no one ever come to you without leaving happier. -Mother Teresa",
    "When you reach the end of your rope, tie a knot in it and hang on. -Franklin D. Roosevelt",
    "Always remember that you are absolutely unique. Just like everyone else. -Margaret Mead",
    "Don't judge each day by the harvest you reap but by the seeds that you plant. -Robert Louis Stevenson",
    "The future belongs to those who believe in the beauty of their dreams. -Eleanor Roosevelt",
    "Tell me and I forget. Teach me and I remember. Involve me and I learn. -Benjamin Franklin",
    "The best and most beautiful things in the world cannot be seen or even touched — they must be felt with the heart. -Helen Keller",
    "It is during our darkest moments that we must focus to see the light. -Aristotle",
    "Whoever is happy will make others happy too. -Anne Frank",
    "Do not go where the path may lead, go instead where there is no path and leave a trail. -Ralph Waldo Emerson"
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          title: Text('Quote App'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.purple.shade400,
        ), 
      
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: Text(quotes[_index % quotes.length]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            TextButton.icon(
              onPressed: (){
                setState(() {
                  _index +=1;
                });
              }, 
              icon: Icon(Icons.wb_sunny, color: Colors.purple,), label: Text('Inspire Me !', style: TextStyle(color: Colors.purple),))
            ],
          )
        ),
      )
    );
  }
}