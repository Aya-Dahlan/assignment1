import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/Products/Products.dart';
import 'package:flutter2/Products/data_source.dart';

class ProductWidget extends StatelessWidget {
  Products product;

  Function function;


  ProductWidget(this.product,this.function);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.3),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(product.image),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name),
                Text(product.description),


              ],
            ),
          ),
          IconButton(

            icon: Icon(Icons.favorite),
            color: product.isFavourite ? Colors.red : Colors.white,
            onPressed: (){
              function(product);
            },

          ),
        ],
      ),
    );
  }
}
