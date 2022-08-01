import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {


    final List<Widget> images = [
      Container(
        color: Colors.red,

      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.black,
      ),
      Container(
        color: Colors.cyan,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.grey,
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: VerticalCardPager(
                    titles: titles,  // required
                    images: images,  // required
                    textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), // optional
                    onPageChanged: (page) { // optional
                    },
                    onSelectedItem: (index) { // optional
                    },
                    initialPage: 0, // optional
                    align : ALIGN.CENTER // optional
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
