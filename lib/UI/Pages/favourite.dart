import 'package:flutter/cupertino.dart';
import 'package:flutter2/Products/data_source.dart';
import 'package:flutter2/UI/Widgets/productWidget.dart';

class Favourite extends StatelessWidget {
  Function function;
  Favourite(this.function);
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return ListView.builder(
        itemCount: products.where((element) => element.isFavourite).length,
        itemBuilder: (context, index) {
          return ProductWidget(
              products.where((element)=> element.isFavourite).toList()[index], function);
        });
  }
}
