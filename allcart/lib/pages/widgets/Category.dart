import 'package:allcart/pages/catTOdisp.dart';
import 'package:flutter/material.dart';
import 'package:allcart/pages/Loading.dart';
import 'package:allcart/pages/Home.dart';
import 'package:allcart/pages/items.dart';
import 'package:allcart/pages/display.dart';

class Category extends StatelessWidget {
  final String image;
  final String text;
  final String text1;
  final String text2;

  final String price1;
  final String price2;

  final String image1;
  final String image2;

  const Category({
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
    return Column(
      children: [
        FlatButton(
            padding: const EdgeInsets.all(8),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => catTOdisp(
                            image1: image1,
                            text1: text1,
                            price1: price1,
                            image2: image2,
                            text2: text2,
                            price2: price2,
                          )));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 60.0,
              backgroundColor: Colors.transparent,
            )),
        Text(
          text,
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
