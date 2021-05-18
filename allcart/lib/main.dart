import 'package:flutter/material.dart';
import 'package:allcart/pages/Loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
      },
    ));
