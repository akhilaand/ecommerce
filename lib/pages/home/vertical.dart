import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Vertical extends StatefulWidget {
  @override
  _VerticalState createState() => _VerticalState();
}

class _VerticalState extends State<Vertical> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            prod_image_locn: 'images/vegetables.jpg',
            prod_img_name: 'vegetables',
          ),

          Category(
            prod_image_locn: 'images/meat.jpg',
            prod_img_name: 'meats',
          ),

          Category(
            prod_image_locn: 'images/snacks.jpg',
            prod_img_name: 'snacks',
          ),

          Category(
            prod_image_locn: 'images/vegetables.jpg',
            prod_img_name: 'diary',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String prod_image_locn;
  final String prod_img_name;
  Category({this.prod_image_locn, this.prod_img_name});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: InkWell(
          onTap: () {},
        child: Container(
            width: 93,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: ListTile(
              title: Container(
                width: 60.0,
                height: 60.0,
                decoration: new BoxDecoration(
                   shape: BoxShape.circle,
                   image: new DecorationImage(
                      fit: BoxFit.fill,
                       image: AssetImage(
                       prod_image_locn)
    )

              ),
              // CircleAvatar(
              //  radius: 30,
              //   backgroundImage: AssetImage(prod_image_locn),
              // ),
              ),

              subtitle: Column(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top:2.0),
                      child: AutoSizeText(

                          prod_img_name,
                          maxLines: 1,
                          style: TextStyle(
                          color: Colors.white
                          ),
                        ),
                      ),
                  ),
                ],
              ),
              ),
            ),
          ),
        ),
      );

  }
}
