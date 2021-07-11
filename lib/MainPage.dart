import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/Products/Products.dart';

import 'UI/Pages/favourite.dart';
import 'UI/Pages/home.dart';
import 'package:flutter2/Products/Products.dart';
import 'package:flutter2/Products/Products.dart';
import 'package:flutter2/Products/data_source.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  toogleProduct(Products product){
    int index=products.indexOf(product);
    products[index].isFavourite=!products[index].isFavourite;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Store"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(toogleProduct),
              Favourite(toogleProduct),
            ],
          ),
      ),
    );
  }
}
