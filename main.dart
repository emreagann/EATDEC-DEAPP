import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'What should I eat today?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int soupNo = 1;
  int mealNo = 1;
  int dessertNo = 1;

  List<String> soupNames = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> mealNames = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> dessertNames = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void refreshMeals() {
    setState(() {
      soupNo = Random().nextInt(5) + 1;
      mealNo = Random().nextInt(5) + 1;
      dessertNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/corba_$soupNo.jpg')),
            ),
          ),
          Text(
            soupNames[soupNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: refreshMeals,
                  child: Image.asset('assets/yemek_$mealNo.jpg')),
            ),
          ),
          Text(
            mealNames[mealNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: refreshMeals,
                  child: Image.asset('assets/tatli_$dessertNo.jpg')),
            ),
          ),
          Text(
            dessertNames[dessertNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
