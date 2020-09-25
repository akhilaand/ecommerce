import 'package:ecommerce/pages/home/product_detailing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Hori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(loc: 'images/ecommerce_carousel.jpg',
              name: 'samsung Galaxy A71',
              price:'17,000'
          ),

          Category(loc: 'images/ecommerce_carousel.jpg',
            name: 'Huawei watch',),

          Category(loc: 'images/meat.jpg',
            name: 'VU tv',),

          Category(loc: 'images/snacks.jpg',
            name: 'Huawei analog',),

          Category(loc: 'images/vegetables.jpg',
            name: 'Huawei analog',)
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  Category({this.name,this.loc,this.price,this.old_price});
  final String name;
  final String loc;
  var price;
  var old_price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          color: Color(0xff1AAFBC),
          width: 150.0,
          height: 150.0,
          child: Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>Product_details()));
              },
              title: Image.asset(loc,
                width: 120.0,
                height: 150.0,
                fit: BoxFit.fitHeight,
              ),

              subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(name,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600
                    ),
                  )
              ),
              isThreeLine: true,
            ),
          ),
        ),
      ),
    );

  }
}
