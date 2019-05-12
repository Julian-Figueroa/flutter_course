import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProducts;
  final Function deleteProduct;

  ProductManager(this.products, this.deleteProduct, this.addProducts);

  @override
  Widget build(BuildContext context) {
    print('[ProductManager Widget] Build');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductControl(addProducts),
      ),
      Expanded(child: Products(products, deleteProduct: deleteProduct))
    ]);
  }
}
