import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo1",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo1"),
        ),
        body: Container(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final wordPair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(wordPair.asPascalCase));
  }
}
