import 'dart:math';

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:allcart/pages/expanded.dart';

class Cash extends StatefulWidget {
  const Cash({Key key}) : super(key: key);

  @override
  _CashState createState() => _CashState();
}

class _CashState extends State<Cash> {
  Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();

  Function handlerPaymentSucess;
  Function handlerErrorFailure;
  Function handlerExternalWallet;
  void initState() {
    super.initState();
    razorpay = new Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSucess);
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    razorpay.clear();
  }

  void openCheckout() {
    var options = {
      "key": "rzp_test_QqXy3K3I9k8NZW",
      "amount": textEditingController.text,
      "name": " ALL CART",
      "description": "Payment for some random product ",
      "prefil": {
        "contact": "2233445566",
        "email": " guhjsahah.com",
      },
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlePaymentSuccess() {
    print("Payment Success");
  }

  void handleErrorFailure() {
    print("PAYMENT ERROR");
  }

  void handleExternalWallet() {
    print("EXTERNAL WALLET");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PAYMENT'),
        ),
        body: Column(children: [
          TextField(
            controller: textEditingController,
            decoration: InputDecoration(hintText: "amount to pay"),
          ),
          SizedBox(height: 15),
          RaisedButton(
            color: Colors.blue,
            child: Text(
              "Donate now",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              openCheckout();
            },
          ),
        ]));
  }
}
