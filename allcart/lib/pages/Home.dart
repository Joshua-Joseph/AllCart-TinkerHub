import 'package:flutter/material.dart';
import 'package:allcart/pages/Loading.dart';
import 'package:allcart/pages/widgets/Category.dart';
import 'package:allcart/pages/display.dart';
import 'package:allcart/authentication_service.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  //const Home({Key key}) : super(key: key);

  final List<String> list = [
    'beds',
    'camera',
    'floor mat',
    'headset',
    'laptops',
    'mens jeans',
    'mens kurta',
    'mens pant',
    'mens shirts',
    'mens shoe',
    'mens suits',
    'mens tshirts',
    'mens wallet',
    'mens watches',
    'mobile phones',
    'play station',
    'sarees',
    'tripods',
    'tv',
    'women suit',
    'women churidar',
    'women frock',
    'women jeans',
    'women kurta',
    'women pants',
    'women shirts',
    'women shoes',
    'women wallet',
    'women watches',
    'women tshirts'
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: Search(widget.list));
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
                icon: Icon(Icons.filter_alt_rounded),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Filter()));
                })
          ],
          centerTitle: true,
          title: Text('Search Bar'),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10,
          mainAxisSpacing: 50,
          crossAxisCount: 2,
          children: <Widget>[
            Category(
              text: 'BEDS',
              image: 'assets/homepic/bed.jpg',
              text1: 'DOUBLE COAT BED ',
              image1: 'assets/homepic/bed.jpg',
              price1: 'PRICE: 10,000Rs',
              text2: 'SINGLE COAT BED',
              image2: 'assets/homepic/bed2.jpg',
              price2: 'PRICE: 6000Rs',
            ),
            Category(
              text: 'CAMERA',
              image: 'assets/homepic/camera.jpg',
              text1: 'CANON EOS ',
              image1: 'assets/homepic/camera.jpg',
              price1: 'PRICE: 60,000Rs',
              text2: 'CANON EOS 1500D',
              image2: 'assets/homepic/camera2.jpg',
              price2: 'PRICE: 40,00Rs',
            ),
            Category(
              text: 'FLOOR MAT',
              image: 'assets/homepic/floor mat.jpg',
              text1: 'CHECKED MAT ',
              image1: 'assets/homepic/floor mat.jpg',
              price1: 'PRICE: 4000Rs',
              text2: 'DIAMOND MAT',
              image2: 'assets/homepic/floor mat2.jpg',
              price2: 'PRICE: 6000Rs',
            ),
            Category(
              text: 'HEADSET',
              image: 'assets/homepic/headset2.jpg',
              text1: 'LENOVA HEADSET ',
              image1: 'assets/homepic/headset2.jpg',
              price1: 'PRICE: 7000Rs',
              text2: 'GAMING HEADSET',
              image2: 'assets/homepic/headset3.jpg',
              price2: 'PRICE: 9000Rs',
            ),
            Category(
              text: 'LAPTOPS',
              image: 'assets/homepic/laptops.jpg',
              text1: 'NOKIA  ',
              image1: 'assets/homepic/laptops.jpg',
              price1: 'PRICE: 70000Rs',
              text2: 'LENOVA',
              image2: 'assets/homepic/laptops2.jpg',
              price2: 'PRICE: 90000Rs',
            ),
            Category(
              text: 'MENS JEANS',
              image: 'assets/homepic/mens jeans.jpg',
              text1: 'BLACK JEANS ',
              image1: 'assets/homepic/mens jeans.jpg',
              price1: 'PRICE: 2500Rs',
              text2: 'BLUE JEANS',
              image2: 'assets/homepic/mens jeans2.jpg',
              price2: 'PRICE: 3000Rs',
            ),
            Category(
              text: 'MENS KURTA',
              image: 'assets/homepic/mens kurta.jpg',
              text1: 'BLUE KURTA ',
              image1: 'assets/homepic/mens kurta.jpg',
              price1: 'PRICE: 2500Rs',
              text2: 'CASUAL YELLOW KURTA',
              image2: 'assets/homepic/mens kurta2.jpg',
              price2: 'PRICE: 1500Rs',
            ),
            Category(
              text: 'MENS PANT',
              image: 'assets/homepic/mens pant.jpg',
              text1: 'LIGHT BROWN PANT ',
              image1: 'assets/homepic/mens pant.jpg',
              price1: 'PRICE: 1000Rs',
              text2: 'CASUAL PANTS',
              image2: 'assets/homepic/mens pant2.jpg',
              price2: 'PRICE: 1500Rs',
            ),
            Category(
              text: 'MENS SHIRTS',
              image: 'assets/homepic/mens shirts.jpg',
              text1: 'CASUAL SHIRTS ',
              image1: 'assets/homepic/mens shirts.jpg',
              price1: 'PRICE: 1800Rs',
              text2: 'CHECKED SHIRT',
              image2: 'assets/homepic/mens shirts2.jpg',
              price2: 'PRICE: 1500Rs',
            ),
            Category(
              text: 'MENS SUIT',
              image: 'assets/homepic/mens suit.jpg',
              text1: 'STYLED BLUE SUIT ',
              image1: 'assets/homepic/mens suit.jpg',
              price1: 'PRICE: 4000Rs',
              text2: 'WINE PEAK',
              image2: 'assets/homepic/mens suit2.jpg',
              price2: 'PRICE: 3000Rs',
            ),
            Category(
              text: 'MENS TSHIRTS',
              image: 'assets/homepic/mens tshirts.jpg',
              text1: 'STRIPED PINK',
              image1: 'assets/homepic/mens tshirts.jpg',
              price1: 'PRICE: 1000Rs',
              text2: 'PRINTED SHIRTS',
              image2: 'assets/homepic/mens tshirts2.jpg',
              price2: 'PRICE: 1800Rs',
            ),
            Category(
              text: 'MENS SHOE',
              image: 'assets/homepic/mens shoe.jpg',
              text1: 'WHITE CASUALS',
              image1: 'assets/homepic/mens shoe.jpg',
              price1: 'PRICE: 1600Rs',
              text2: 'FORMAL BROWN',
              image2: 'assets/homepic/mens shoe2.jpg',
              price2: 'PRICE: 1800Rs',
            ),
            Category(
              text: 'MENS WALLET',
              image: 'assets/homepic/mens wallet.jpg',
              text1: 'LEATHER BROWN',
              image1: 'assets/homepic/mens wallet.jpg',
              price1: 'PRICE: 1600Rs',
              text2: 'VERTICAL WALLET',
              image2: 'assets/homepic/mens wallet2.jpg',
              price2: 'PRICE: 1800Rs',
            ),
            Category(
              text: 'MENS WATCHES',
              image: 'assets/homepic/mens watches.jpg',
              text1: 'IWC',
              image1: 'assets/homepic/mens watches.jpg',
              price1: 'PRICE: 7500Rs',
              text2: 'BLACK PREMIUM',
              image2: 'assets/homepic/mens watches2.jpg',
              price2: 'PRICE: 8000Rs',
            ),
            Category(
              text: 'MOBILE PHONES',
              image: 'assets/homepic/phone.jpg',
              text1: 'ONE PLUS',
              image1: 'assets/homepic/phone.jpg',
              price1: 'PRICE: 50000Rs',
              text2: ' I PHONE 12 PRO',
              image2: 'assets/homepic/phone2.jpg',
              price2: 'PRICE: 10000Rs',
            ),
            Category(
              text: 'PLAY STATION',
              image: 'assets/homepic/play station.jpg',
              text1: 'PS5',
              image1: 'assets/homepic/play station.jpg',
              price1: 'PRICE: 50000Rs',
              text2: 'PS4',
              image2: 'assets/homepic/play station2.jpg',
              price2: 'PRICE: 25000Rs',
            ),
            Category(
              text: 'SAREES',
              image: 'assets/homepic/saree.jpg',
              text1: 'CASUAL SAREE',
              image1: 'assets/homepic/saree.jpg',
              price1: 'PRICE: 5000Rs',
              text2: 'BRIDAL SAREE',
              image2: 'assets/homepic/saree2.jpg',
              price2: 'PRICE: 6000Rs',
            ),
            Category(
              text: 'TRIPODS',
              image: 'assets/homepic/tripod.jpg',
              text1: 'ZOOMIE',
              image1: 'assets/homepic/tripod.jpg',
              price1: 'PRICE: 2000Rs',
              text2: 'GORILAA TRIPODS',
              image2: 'assets/homepic/tripod2.jpg',
              price2: 'PRICE: 3000Rs',
            ),
            Category(
              text: 'TV',
              image: 'assets/homepic/tv.jpg',
              text1: 'MI LED',
              image1: 'assets/homepic/tv.jpg',
              price1: 'PRICE: 80000Rs',
              text2: 'LG LED',
              image2: 'assets/homepic/tv2.jpg',
              price2: 'PRICE: 50000Rs',
            ),
            Category(
              text: 'WOMEN SUIT',
              image: 'assets/homepic/women suit.jpg',
              text1: 'PINK SUIT',
              image1: 'assets/homepic/women suit.jpg',
              price1: 'PRICE: 8000Rs',
              text2: 'CHECKED JACKET SUIT',
              image2: 'assets/homepic/women suit2.jpg',
              price2: 'PRICE: 60000Rs',
            ),
            Category(
              text: 'WOMEN CHURIDAR',
              image: 'assets/homepic/womens churidar.jpg',
              text1: 'BLUE SALWAR',
              image1: 'assets/homepic/womens churidar.jpg',
              price1: 'PRICE: 2000Rs',
              text2: 'RAIN AND RAINBOW',
              image2: 'assets/homepic/womens churidar2.jpg',
              price2: 'PRICE: 1700Rs',
            ),
            Category(
              text: 'WOMEN FROCKS',
              image: 'assets/homepic/womens frocks.jpg',
              text1: 'PRINTED FROCKS',
              image1: 'assets/homepic/womens frocks.jpg',
              price1: 'PRICE: 2500Rs',
              text2: 'WHITE PRINTED',
              image2: 'assets/homepic/womens frocks2.jpg',
              price2: 'PRICE: 1700Rs',
            ),
            Category(
              text: 'WOMEN JEANS',
              image: 'assets/homepic/womens jeans.jpg',
              text1: 'SKY BLUE JEANS',
              image1: 'assets/homepic/womens jeans.jpg',
              price1: 'PRICE: 2700Rs',
              text2: 'PLAIN BLACK JEANS',
              image2: 'assets/homepic/womens jeans2.jpg',
              price2: 'PRICE: 1700Rs',
            ),
            Category(
              text: 'WOMEN KURTA',
              image: 'assets/homepic/womens kurta.jpg',
              text1: 'PRINTED KURTA',
              image1: 'assets/homepic/womens kurta.jpg',
              price1: 'PRICE: 1400Rs',
              text2: 'DARK BLUE KURTA',
              image2: 'assets/homepic/womens kurta2.jpg',
              price2: 'PRICE: 1300Rs',
            ),
            Category(
              text: 'WOMEN PANT',
              image: 'assets/homepic/womens pant.jpg',
              text1: 'SOFT PINK PANTS',
              image1: 'assets/homepic/womens pant.jpg',
              price1: 'PRICE: 1000Rs',
              text2: 'PLAIN GREEN PANTS',
              image2: 'assets/homepic/womens pant2.jpg',
              price2: 'PRICE: 1500Rs',
            ),
            Category(
              text: 'WOMEN SHIRTS',
              image: 'assets/homepic/womens shirts.jpg',
              text1: 'BLUE AND WHITE SHIRT',
              image1: 'assets/homepic/womens shirts.jpg',
              price1: 'PRICE: 1500Rs',
              text2: ' WHITE CHINESE NECK',
              image2: 'assets/homepic/womens shirts2.jpg',
              price2: 'PRICE: 2000Rs',
            ),
            Category(
              text: 'WOMEN SHOES',
              image: 'assets/homepic/womens shoes.jpg',
              text1: 'SMOOTH WEARS',
              image1: 'assets/homepic/womens shoes.jpg',
              price1: 'PRICE: 2000Rs',
              text2: 'FASHION SHOES',
              image2: 'assets/homepic/womens shoes2.jpg',
              price2: 'PRICE: 2700Rs',
            ),
            Category(
              text: 'WOMEN WALLET',
              image: 'assets/homepic/womens wallet.jpg',
              text1: 'PINK CUSTOM MADE',
              image1: 'assets/homepic/womens wallet.jpg',
              price1: 'PRICE: 900Rs',
              text2: 'LEATHER WALLET',
              image2: 'assets/homepic/womens wallet2.jpg',
              price2: 'PRICE: 1200Rs',
            ),
            Category(
              text: 'WOMEN WATCHES',
              image: 'assets/homepic/womens watches.jpg',
              text1: 'CHUMBAK',
              image1: 'assets/homepic/womens watches.jpg',
              price1: 'PRICE: 4000Rs',
              text2: 'KOVONSH',
              image2: 'assets/homepic/womens watches2.jpg',
              price2: 'PRICE: 7000Rs',
            ),
            Category(
              text: 'WOMEN TSHIRTS',
              image: 'assets/homepic/womens tshirt.jpg',
              text1: 'BLUE TSHIRTS',
              image1: 'assets/homepic/womens tshirt.jpg',
              price1: 'PRICE: 1700Rs',
              text2: ' PRINTED TSHIRTS',
              image2: 'assets/homepic/womens tshirt2.jpg',
              price2: 'PRICE: 2300Rs',
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    context.read<AuthenticationService>().signOut();
                  },
                  child: Text('SignOut')),
            )
          ],
        ));
  }
}

class Filter extends StatelessWidget {
  const Filter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text('Filter by gender'),
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => male()));
                  },
                  child: Text('Male')),
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => female()));
                  },
                  child: Text('Female')),
            )
          ],
        ),
      ),
    );
  }
}

class male extends StatelessWidget {
  const male({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Search Bar'),
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 50,
            crossAxisCount: 2,
            children: <Widget>[
              Category(
                text: 'MENS JEANS',
                image: 'assets/homepic/mens jeans.jpg',
                text1: 'BLACK JEANS ',
                image1: 'assets/homepic/mens jeans.jpg',
                price1: 'PRICE: 2500Rs',
                text2: 'BLUE JEANS',
                image2: 'assets/homepic/mens jeans2.jpg',
                price2: 'PRICE: 3000Rs',
              ),
              Category(
                text: 'MENS KURTA',
                image: 'assets/homepic/mens kurta.jpg',
                text1: 'BLUE KURTA ',
                image1: 'assets/homepic/mens kurta.jpg',
                price1: 'PRICE: 2500Rs',
                text2: 'CASUAL YELLOW KURTA',
                image2: 'assets/homepic/mens kurta2.jpg',
                price2: 'PRICE: 1500Rs',
              ),
              Category(
                text: 'MENS PANT',
                image: 'assets/homepic/mens pant.jpg',
                text1: 'LIGHT BROWN PANT ',
                image1: 'assets/homepic/mens pant.jpg',
                price1: 'PRICE: 1000Rs',
                text2: 'CASUAL PANTS',
                image2: 'assets/homepic/mens pant2.jpg',
                price2: 'PRICE: 1500Rs',
              ),
              Category(
                text: 'MENS SHIRTS',
                image: 'assets/homepic/mens shirts.jpg',
                text1: 'CASUAL SHIRTS ',
                image1: 'assets/homepic/mens shirts.jpg',
                price1: 'PRICE: 1800Rs',
                text2: 'CHECKED SHIRT',
                image2: 'assets/homepic/mens shirts2.jpg',
                price2: 'PRICE: 1500Rs',
              ),
              Category(
                text: 'MENS SUIT',
                image: 'assets/homepic/mens suit.jpg',
                text1: 'STYLED BLUE SUIT ',
                image1: 'assets/homepic/mens suit.jpg',
                price1: 'PRICE: 4000Rs',
                text2: 'WINE PEAK',
                image2: 'assets/homepic/mens suit2.jpg',
                price2: 'PRICE: 3000Rs',
              ),
              Category(
                text: 'MENS TSHIRTS',
                image: 'assets/homepic/mens tshirts.jpg',
                text1: 'STRIPED PINK',
                image1: 'assets/homepic/mens tshirts.jpg',
                price1: 'PRICE: 1000Rs',
                text2: 'PRINTED SHIRTS',
                image2: 'assets/homepic/mens tshirts2.jpg',
                price2: 'PRICE: 1800Rs',
              ),
              Category(
                text: 'MENS SHOE',
                image: 'assets/homepic/mens shoe.jpg',
                text1: 'WHITE CASUALS',
                image1: 'assets/homepic/mens shoe.jpg',
                price1: 'PRICE: 1600Rs',
                text2: 'FORMAL BROWN',
                image2: 'assets/homepic/mens shoe2.jpg',
                price2: 'PRICE: 1800Rs',
              ),
              Category(
                text: 'MENS WALLET',
                image: 'assets/homepic/mens wallet.jpg',
                text1: 'LEATHER BROWN',
                image1: 'assets/homepic/mens wallet.jpg',
                price1: 'PRICE: 1600Rs',
                text2: 'VERTICAL WALLET',
                image2: 'assets/homepic/mens wallet2.jpg',
                price2: 'PRICE: 1800Rs',
              ),
              Category(
                text: 'MENS WATCHES',
                image: 'assets/homepic/mens watches.jpg',
                text1: 'IWC',
                image1: 'assets/homepic/mens watches.jpg',
                price1: 'PRICE: 7500Rs',
                text2: 'BLACK PREMIUM',
                image2: 'assets/homepic/mens watches2.jpg',
                price2: 'PRICE: 8000Rs',
              ),
            ]));
  }
}

class female extends StatelessWidget {
  const female({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Search Bar'),
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 50,
            crossAxisCount: 2,
            children: <Widget>[
              Category(
                text: 'SAREES',
                image: 'assets/homepic/saree.jpg',
                text1: 'CASUAL SAREE',
                image1: 'assets/homepic/saree.jpg',
                price1: 'PRICE: 5000Rs',
                text2: 'BRIDAL SAREE',
                image2: 'assets/homepic/saree2.jpg',
                price2: 'PRICE: 6000Rs',
              ),
              Category(
                text: 'WOMEN SUIT',
                image: 'assets/homepic/women suit.jpg',
                text1: 'PINK SUIT',
                image1: 'assets/homepic/women suit.jpg',
                price1: 'PRICE: 8000Rs',
                text2: 'CHECKED JACKET SUIT',
                image2: 'assets/homepic/women suit2.jpg',
                price2: 'PRICE: 60000Rs',
              ),
              Category(
                text: 'WOMEN CHURIDAR',
                image: 'assets/homepic/womens churidar.jpg',
                text1: 'BLUE SALWAR',
                image1: 'assets/homepic/womens churidar.jpg',
                price1: 'PRICE: 2000Rs',
                text2: 'RAIN AND RAINBOW',
                image2: 'assets/homepic/womens churidar2.jpg',
                price2: 'PRICE: 1700Rs',
              ),
              Category(
                text: 'WOMEN FROCKS',
                image: 'assets/homepic/womens frocks.jpg',
                text1: 'PRINTED FROCKS',
                image1: 'assets/homepic/womens frocks.jpg',
                price1: 'PRICE: 2500Rs',
                text2: 'WHITE PRINTED',
                image2: 'assets/homepic/womens frocks2.jpg',
                price2: 'PRICE: 1700Rs',
              ),
              Category(
                text: 'WOMEN JEANS',
                image: 'assets/homepic/womens jeans.jpg',
                text1: 'SKY BLUE JEANS',
                image1: 'assets/homepic/womens jeans.jpg',
                price1: 'PRICE: 2700Rs',
                text2: 'PLAIN BLACK JEANS',
                image2: 'assets/homepic/womens jeans2.jpg',
                price2: 'PRICE: 1700Rs',
              ),
              Category(
                text: 'WOMEN KURTA',
                image: 'assets/homepic/womens kurta.jpg',
                text1: 'PRINTED KURTA',
                image1: 'assets/homepic/womens kurta.jpg',
                price1: 'PRICE: 1400Rs',
                text2: 'DARK BLUE KURTA',
                image2: 'assets/homepic/womens kurta2.jpg',
                price2: 'PRICE: 1300Rs',
              ),
              Category(
                text: 'WOMEN PANT',
                image: 'assets/homepic/womens pant.jpg',
                text1: 'SOFT PINK PANTS',
                image1: 'assets/homepic/womens pant.jpg',
                price1: 'PRICE: 1000Rs',
                text2: 'PLAIN GREEN PANTS',
                image2: 'assets/homepic/womens pant2.jpg',
                price2: 'PRICE: 1500Rs',
              ),
              Category(
                text: 'WOMEN SHIRTS',
                image: 'assets/homepic/womens shirts.jpg',
                text1: 'BLUE AND WHITE SHIRT',
                image1: 'assets/homepic/womens shirts.jpg',
                price1: 'PRICE: 1500Rs',
                text2: ' WHITE CHINESE NECK',
                image2: 'assets/homepic/womens shirts2.jpg',
                price2: 'PRICE: 2000Rs',
              ),
              Category(
                text: 'WOMEN SHOES',
                image: 'assets/homepic/womens shoes.jpg',
                text1: 'SMOOTH WEARS',
                image1: 'assets/homepic/womens shoes.jpg',
                price1: 'PRICE: 2000Rs',
                text2: 'FASHION SHOES',
                image2: 'assets/homepic/womens shoes2.jpg',
                price2: 'PRICE: 2700Rs',
              ),
              Category(
                text: 'WOMEN WALLET',
                image: 'assets/homepic/womens wallet.jpg',
                text1: 'PINK CUSTOM MADE',
                image1: 'assets/homepic/womens wallet.jpg',
                price1: 'PRICE: 900Rs',
                text2: 'LEATHER WALLET',
                image2: 'assets/homepic/womens wallet2.jpg',
                price2: 'PRICE: 1200Rs',
              ),
              Category(
                text: 'WOMEN WATCHES',
                image: 'assets/homepic/womens watches.jpg',
                text1: 'CHUMBAK',
                image1: 'assets/homepic/womens watches.jpg',
                price1: 'PRICE: 4000Rs',
                text2: 'KOVONSH',
                image2: 'assets/homepic/womens watches2.jpg',
                price2: 'PRICE: 7000Rs',
              ),
              Category(
                text: 'WOMEN TSHIRTS',
                image: 'assets/homepic/womens tshirt.jpg',
                text1: 'BLUE TSHIRTS',
                image1: 'assets/homepic/womens tshirt.jpg',
                price1: 'PRICE: 1700Rs',
                text2: ' PRINTED TSHIRTS',
                image2: 'assets/homepic/womens tshirt2.jpg',
                price2: 'PRICE: 2300Rs',
              ),
            ]));
  }
}

class Search extends SearchDelegate {
  String inputText;
  String outputText1;
  String outputText2;
  String outputTextPrice1;
  String outputTextPrice2;
  String outputImage1;
  String outputImage2;

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  String selectedResult = "";

  @override
  Widget buildResults(BuildContext context) {
    inputText = selectedResult;

    if (inputText == 'beds') {
      outputText1 = 'DOUBLE COAT BED';
      outputText2 = 'SINGLE COAT BED';
      outputTextPrice1 = 'PRICE: 10,000Rs';
      outputTextPrice2 = 'PRICE: 6000Rs';
      outputImage1 = 'assets/homepic/bed.jpg';
      outputImage2 = 'assets/homepic/bed2.jpg';
    } else if (inputText == 'camera') {
      outputText1 = 'CANON EOS ';
      outputImage1 = 'assets/homepic/camera.jpg';
      outputTextPrice1 = 'PRICE = 60;000Rs';
      outputText2 = 'CANON EOS 1500D';
      outputImage2 = 'assets/homepic/camera2.jpg';
      outputTextPrice2 = 'PRICE = 40;00Rs';
    } else if (inputText == 'floor mat') {
      outputText1 = 'CHECKED MAT ';
      outputImage1 = 'assets/homepic/floor mat.jpg';
      outputTextPrice1 = 'PRICE = 4000Rs';
      outputText2 = 'DIAMOND MAT';
      outputImage2 = 'assets/homepic/floor mat2.jpg';
      outputTextPrice2 = 'PRICE = 6000Rs';
    } else if (inputText == 'headset') {
      outputText1 = 'LENOVA HEADSET ';
      outputImage1 = 'assets/homepic/headset2.jpg';
      outputTextPrice1 = 'PRICE = 7000Rs';
      outputText2 = 'GAMING HEADSET';
      outputImage2 = 'assets/homepic/headset3.jpg';
      outputTextPrice2 = 'PRICE = 9000Rs';
    } else if (inputText == 'laptops') {
      outputText1 = 'NOKIA  ';
      outputImage1 = 'assets/homepic/laptops.jpg';
      outputTextPrice1 = 'PRICE = 70000Rs';
      outputText2 = 'LENOVA';
      outputImage2 = 'assets/homepic/laptops2.jpg';
      outputTextPrice2 = 'PRICE = 90000Rs';
    } else if (inputText == 'mens jeans') {
      outputText1 = 'BLACK JEANS ';
      outputImage1 = 'assets/homepic/mens jeans.jpg';
      outputTextPrice1 = 'PRICE = 2500Rs';
      outputText2 = 'BLUE JEANS';
      outputImage2 = 'assets/homepic/mens jeans2.jpg';
      outputTextPrice2 = 'PRICE = 3000Rs';
    } else if (inputText == 'mens kurta') {
      outputText1 = 'BLUE KURTA ';
      outputImage1 = 'assets/homepic/mens kurta.jpg';
      outputTextPrice1 = 'PRICE = 2500Rs';
      outputText2 = 'CASUAL YELLOW KURTA';
      outputImage2 = 'assets/homepic/mens kurta2.jpg';
      outputTextPrice2 = 'PRICE = 1500Rs';
    } else if (inputText == 'mens pant') {
      outputText1 = 'LIGHT BROWN PANT ';
      outputImage1 = 'assets/homepic/mens pant.jpg';
      outputTextPrice1 = 'PRICE = 1000Rs';
      outputText2 = 'CASUAL PANTS';
      outputImage2 = 'assets/homepic/mens pant2.jpg';
      outputTextPrice2 = 'PRICE = 1500Rs';
    } else if (inputText == 'mens shirts') {
      outputText1 = 'CASUAL SHIRTS ';
      outputImage1 = 'assets/homepic/mens shirts.jpg';
      outputTextPrice1 = 'PRICE = 1800Rs';
      outputText2 = 'CHECKED SHIRT';
      outputImage2 = 'assets/homepic/mens shirts2.jpg';
      outputTextPrice2 = 'PRICE = 1500Rs';
    } else if (inputText == 'mens shoe') {
      outputText1 = 'WHITE CASUALS';
      outputImage1 = 'assets/homepic/mens shoe.jpg';
      outputTextPrice1 = 'PRICE = 1600Rs';
      outputText2 = 'FORMAL BROWN';
      outputImage2 = 'assets/homepic/mens shoe2.jpg';
      outputTextPrice2 = 'PRICE = 1800Rs';
    } else if (inputText == 'mens suits') {
      outputText1 = 'STYLED BLUE SUIT ';
      outputImage1 = 'assets/homepic/mens suit.jpg';
      outputTextPrice1 = 'PRICE = 4000Rs';
      outputText2 = 'WINE PEAK';
      outputImage2 = 'assets/homepic/mens suit2.jpg';
      outputTextPrice2 = 'PRICE = 3000Rs';
    } else if (inputText == 'mens tshirts') {
      outputText1 = 'STRIPED PINK';
      outputImage1 = 'assets/homepic/mens tshirts.jpg';
      outputTextPrice1 = 'PRICE = 1000Rs';
      outputText2 = 'PRINTED SHIRTS';
      outputImage2 = 'assets/homepic/mens tshirts2.jpg';
      outputTextPrice2 = 'PRICE = 1800Rs';
    } else if (inputText == 'mens wallet') {
      outputText1 = 'LEATHER BROWN';
      outputImage1 = 'assets/homepic/mens wallet.jpg';
      outputTextPrice1 = 'PRICE = 1600Rs';
      outputText2 = 'VERTICAL WALLET';
      outputImage2 = 'assets/homepic/mens wallet2.jpg';
      outputTextPrice2 = 'PRICE = 1800Rs';
    } else if (inputText == 'mens watches') {
      outputText1 = 'IWC';
      outputImage1 = 'assets/homepic/mens watches.jpg';
      outputTextPrice1 = 'PRICE = 7500Rs';
      outputText2 = 'BLACK PREMIUM';
      outputImage2 = 'assets/homepic/mens watches2.jpg';
      outputTextPrice2 = 'PRICE = 8000Rs';
    } else if (inputText == 'mobile phones') {
      outputText1 = 'ONE PLUS';
      outputImage1 = 'assets/homepic/phone.jpg';
      outputTextPrice1 = 'PRICE = 50000Rs';
      outputText2 = ' I PHONE 12 PRO';
      outputImage2 = 'assets/homepic/phone2.jpg';
      outputTextPrice2 = 'PRICE = 10000Rs';
    } else if (inputText == 'play station') {
      outputText1 = 'PS5';
      outputImage1 = 'assets/homepic/play station.jpg';
      outputTextPrice1 = 'PRICE = 50000Rs';
      outputText2 = 'PS4';
      outputImage2 = 'assets/homepic/play station2.jpg';
      outputTextPrice2 = 'PRICE = 25000Rs';
    } else if (inputText == 'sarees') {
      outputText1 = 'CASUAL SAREE';
      outputImage1 = 'assets/homepic/saree.jpg';
      outputTextPrice1 = 'PRICE = 5000Rs';
      outputText2 = 'BRIDAL SAREE';
      outputImage2 = 'assets/homepic/saree2.jpg';
      outputTextPrice2 = 'PRICE = 6000Rs';
    } else if (inputText == 'tripods') {
      outputText1 = 'ZOOMIE';
      outputImage1 = 'assets/homepic/tripod.jpg';
      outputTextPrice1 = 'PRICE = 2000Rs';
      outputText2 = 'GORILAA TRIPODS';
      outputImage2 = 'assets/homepic/tripod2.jpg';
      outputTextPrice2 = 'PRICE = 3000Rs';
    } else if (inputText == 'tv') {
      outputText1 = 'MI LED';
      outputImage1 = 'assets/homepic/tv.jpg';
      outputTextPrice1 = 'PRICE = 80000Rs';
      outputText2 = 'LG LED';
      outputImage2 = 'assets/homepic/tv2.jpg';
      outputTextPrice2 = 'PRICE = 50000Rs';
    } else if (inputText == 'women suit') {
      outputText1 = 'PINK SUIT';
      outputImage1 = 'assets/homepic/women suit.jpg';
      outputTextPrice1 = 'PRICE = 8000Rs';
      outputText2 = 'CHECKED JACKET SUIT';
      outputImage2 = 'assets/homepic/women suit2.jpg';
      outputTextPrice2 = 'PRICE = 60000Rs';
    } else if (inputText == 'women churidar') {
      outputText1 = 'BLUE SALWAR';
      outputImage1 = 'assets/homepic/womens churidar.jpg';
      outputTextPrice1 = 'PRICE = 2000Rs';
      outputText2 = 'RAIN AND RAINBOW';
      outputImage2 = 'assets/homepic/womens churidar2.jpg';
      outputTextPrice2 = 'PRICE = 1700Rs';
    } else if (inputText == 'women frock') {
      outputText1 = 'PRINTED FROCKS';
      outputImage1 = 'assets/homepic/womens frocks.jpg';
      outputTextPrice1 = 'PRICE = 2500Rs';
      outputText2 = 'WHITE PRINTED';
      outputImage2 = 'assets/homepic/womens frocks2.jpg';
      outputTextPrice2 = 'PRICE = 1700Rs';
    } else if (inputText == 'women jeans') {
      outputText1 = 'SKY BLUE JEANS';
      outputImage1 = 'assets/homepic/womens jeans.jpg';
      outputTextPrice1 = 'PRICE = 2700Rs';
      outputText2 = 'PLAIN BLACK JEANS';
      outputImage2 = 'assets/homepic/womens jeans2.jpg';
      outputTextPrice2 = 'PRICE = 1700Rs';
    } else if (inputText == 'women kurta') {
      outputText1 = 'PRINTED KURTA';
      outputImage1 = 'assets/homepic/womens kurta.jpg';
      outputTextPrice1 = 'PRICE = 1400Rs';
      outputText2 = 'DARK BLUE KURTA';
      outputImage2 = 'assets/homepic/womens kurta2.jpg';
      outputTextPrice2 = 'PRICE = 1300Rs';
    } else if (inputText == 'women pants') {
      outputText1 = 'SOFT PINK PANTS';
      outputImage1 = 'assets/homepic/womens pant.jpg';
      outputTextPrice1 = 'PRICE = 1000Rs';
      outputText2 = 'PLAIN GREEN PANTS';
      outputImage2 = 'assets/homepic/womens pant2.jpg';
      outputTextPrice2 = 'PRICE = 1500Rs';
    } else if (inputText == 'women shirts') {
      outputText1 = 'BLUE AND WHITE SHIRT';
      outputImage1 = 'assets/homepic/womens shirts.jpg';
      outputTextPrice1 = 'PRICE = 1500Rs';
      outputText2 = ' WHITE CHINESE NECK';
      outputImage2 = 'assets/homepic/womens shirts2.jpg';
      outputTextPrice2 = 'PRICE = 2000Rs';
    } else if (inputText == 'women shoes') {
      outputText1 = 'SMOOTH WEARS';
      outputImage1 = 'assets/homepic/womens shoes.jpg';
      outputTextPrice1 = 'PRICE = 2000Rs';
      outputText2 = 'FASHION SHOES';
      outputImage2 = 'assets/homepic/womens shoes2.jpg';
      outputTextPrice2 = 'PRICE = 2700Rs';
    } else if (inputText == 'women wallet') {
      outputText1 = 'PINK CUSTOM MADE';
      outputImage1 = 'assets/homepic/womens wallet.jpg';
      outputTextPrice1 = 'PRICE = 900Rs';
      outputText2 = 'LEATHER WALLET';
      outputImage2 = 'assets/homepic/womens wallet2.jpg';
      outputTextPrice2 = 'PRICE = 1200Rs';
    } else if (inputText == 'women watches') {
      outputText1 = 'CHUMBAK';
      outputImage1 = 'assets/homepic/womens watches.jpg';
      outputTextPrice1 = 'PRICE = 4000Rs';
      outputText2 = 'KOVONSH';
      outputImage2 = 'assets/homepic/womens watches2.jpg';
      outputTextPrice2 = 'PRICE = 7000Rs';
    } else if (inputText == 'women tshirts') {
      outputText1 = 'BLUE TSHIRTS';
      outputImage1 = 'assets/homepic/womens tshirt.jpg';
      outputTextPrice1 = 'PRICE = 1700Rs';
      outputText2 = ' PRINTED TSHIRTS';
      outputImage2 = 'assets/homepic/womens tshirt2.jpg';
      outputTextPrice2 = 'PRICE = 2300Rs';
    }
    return Display(
      image1: outputImage1,
      text1: outputText1,
      price1: outputTextPrice1,
      image2: outputImage2,
      text2: outputText2,
      price2: outputTextPrice2,
    );
  }

  final List<String> listExample;
  Search(this.listExample);

  List<String> recentList = [
    "camera",
    "mobile phone",
    "pant",
    "shirt",
    "shoes"
  ];

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = [];
    query.isEmpty
        ? suggestionList = recentList //In the true case
        : suggestionList.addAll(listExample.where(
            // In the false case
            (element) => element.contains(query),
          ));

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suggestionList[index],
          ),
          leading: query.isEmpty ? Icon(Icons.access_time) : SizedBox(),
          onTap: () {
            selectedResult = suggestionList[index];
            showResults(context);
          },
        );
      },
    );
  }
}
