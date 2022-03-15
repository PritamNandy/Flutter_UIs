import 'package:flutter/material.dart';
import 'package:shop/providers/products.dart';
import 'package:shop/widgets/product_item.dart';
import '../models/product.dart';
import 'package:provider/provider.dart';


class ProductGrids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<Products>(context)
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      itemBuilder: (ctx, i) => ProductItem(
        loadedProducts[i].id,
        loadedProducts[i].title,
        loadedProducts[i].imageUrl,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
