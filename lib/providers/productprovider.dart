import 'package:crud_php_rest_api/models/product.dart';
import 'package:crud_php_rest_api/services/productService.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> _productList;

  List<ProductModel> get productList => _productList;

  set productList(List<ProductModel> newList) {
    _productList = newList;
    notifyListeners();
  }

  Future<List<ProductModel>> fetchProductFromProvider() async {
    productList = await ProductService.fetchproduct();
    return productList;
  }
}
