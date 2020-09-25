import 'package:flutter/material.dart';
class Product_details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: InkWell(
            onTap: (){

            },
            child: Container(
              height: 70,
              width: 150,
              color: Colors.yellow,
              child: FittedBox(child: Text('Buy now')),
            ),
          ),
        ),
      ),
    );
  }
}
