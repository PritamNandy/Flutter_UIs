import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/widgets/product_grids.dart';
import 'package:shop/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PNShop'),
      ),
      body: ProductGrids(),
    );
  }
}
