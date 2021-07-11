import 'package:flutter/cupertino.dart';

class Products {
  String name;
  String description;
  bool isFavourite = false;
  String image;

  Products({
    @required this.name,
    @required this.description,
    @required this.isFavourite,
    @required this.image,
  });
}
