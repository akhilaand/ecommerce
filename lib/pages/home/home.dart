import 'package:ecommerce/pages/home/horizontal.dart';

import 'vertical.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color appBarColor = Color(0xff1AAFBC);

  Color bodyColor = Color(0xff80634c);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.5)),
                        borderSide: BorderSide(color: appBarColor, width: 0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.5)),
                        borderSide: BorderSide(color: appBarColor, width: 0),
                      )),
                ),
              ),
              preferredSize: Size.fromHeight(65)),
          title: Text('MAaspp'),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: null)
          ],
        ),
        drawer: Drawer(),
        body: Container(
          color: bodyColor,
          child: ListView(children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 200,
                  child: Carousel(
                    dotColor: Colors.transparent,
                    autoplay: false,
                    showIndicator: false,
                    images: [
                      AssetImage('images/ecommerce_carousel.jpg'),
                      AssetImage('images/ecommerce_carousel1.jpg'),
                    ],
                  ),
                ),
                Container(

                    child: Column(
                      children: <Widget>[
                        Vertical(),
                        Hori()
                      ],
                    ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
