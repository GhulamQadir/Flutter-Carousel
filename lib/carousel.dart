import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatefulWidget {
  @override
  _CarouselDemoState createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  var list = [
    "carousel1",
    "carousel2",
    "carousel3",
    "carousel4",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CarouselSlider(
              //  aspectRatio: 16/9,
              viewportFraction: 0.999,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 400),
              scrollDirection: Axis.horizontal,
              height: MediaQuery.of(context).size.height * 0.45,
              items: list.map((listpass) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                      child: Text(listpass));
                });
              }).toList())
        ],
      ),
    );
  }
}
