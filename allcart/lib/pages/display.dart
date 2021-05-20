import 'package:flutter/material.dart';
import 'package:allcart/pages/items.dart';
import 'package:allcart/pages/widgets/category.dart';

class Display extends StatelessWidget {
  final String image;
  final String text;
  final String text1;
  final String text2;

  final String price1;
  final String price2;

  final String image1;
  final String image2;

  Display({
    this.text,
    this.image,
    this.text1,
    this.text2,
    this.price1,
    this.price2,
    this.image1,
    this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: Text('SEARCH'),
      // ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Items(pic: '$image1', content: '$text1', price: '$price1'),
              Items(pic: '$image2', content: '$text2', price: '$price2'),
            ],
          ),
        ],
      ),
    );
  }
}
