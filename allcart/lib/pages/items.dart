import 'package:flutter/material.dart';
import 'package:allcart/pages/Loading.dart';
import 'package:allcart/pages/Home.dart';
import 'package:allcart/pages/widgets/Category.dart';
import 'package:allcart/pages/expanded.dart';

class Items extends StatelessWidget {
  final String pic;
  final String content;
  final String price;

  const Items({this.pic, this.content, this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          padding: const EdgeInsets.all(15.0),
          onPressed: () {
            Navigator.push(
                context, new MaterialPageRoute(builder: (context) => Price()));
          },
          child: CircleAvatar(
            backgroundImage: AssetImage(pic),
            radius: 70.0,
          ),
        ),
        Divider(
          height: 40.0,
        ),
        Text(
          content,
          style: TextStyle(
            color: Colors.blue[400],
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          price,
          style: TextStyle(
            color: Colors.redAccent,
          ),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}
