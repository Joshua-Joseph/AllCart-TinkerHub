import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:allcart/pages/items.dart';
import 'package:allcart/cash.dart';

class Price extends StatelessWidget {
  final String image;
  final String price;
  final String text;

  const Price({this.image, this.price, this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(''
            'DETAILS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Center(
              child: Image(
                image: AssetImage(image),
                height: 500.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$text',
              ),
              Text(
                '$price',
              )
            ],
          ),
          SizedBox(height: 2.0),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, new MaterialPageRoute(builder: (context) => Cash()));
            },
            child: Text(
              'BUY NOW',
            ),
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
