import 'package:flutter/material.dart';
import 'package:allcart/pages/Home.dart';
import 'package:allcart/pages/widgets/Category.dart';
import 'package:allcart/pages/display.dart';

class catTOdisp extends StatelessWidget {
  final String text1;
  final String text2;
  final String image1;
  final String image2;
  final String price1;
  final String price2;

  const catTOdisp({
    this.text1,
    this.text2,
    this.image1,
    this.image2,
    this.price1,
    this.price2,
  });

  // const catTOdisp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('SEARCH'),
      ),
      body: Display(
        image1: image1,
        text1: text1,
        price1: price1,
        image2: image2,
        text2: text2,
        price2: price2,
      ),
    );
  }
}
