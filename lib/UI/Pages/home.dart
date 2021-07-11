import 'package:flutter/cupertino.dart';
import 'package:flutter2/Products/data_source.dart';
import 'package:flutter2/UI/Widgets/productWidget.dart';

class HomePage extends StatelessWidget {
  Function function;
  HomePage(this.function);
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductWidget(products[index],function);
        });
  }
}
