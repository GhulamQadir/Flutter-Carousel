import 'package:flutter/material.dart';
import 'carousel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Carousel in Flutter",
            style: TextStyle(color: Colors.black, fontSize: 25),
          )),
          backgroundColor: Colors.white,
        ),
        body: (CarouselDemo()),
      ),
    );
  }
}
