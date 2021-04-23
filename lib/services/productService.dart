import 'dart:convert';

import 'package:crud_php_rest_api/utils/config.dart';
import 'package:http/http.dart' as http;
import 'package:crud_php_rest_api/models/product.dart';

class ProductService {
  // static const url = "4502f8a9db43.ngrok.io";
  // static var path = "testApi/frontend/web/products";

  static Future<List<ProductModel>> fetchproduct() async {
    final response = await http.get(Uri.https(Config.url, Config.path));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final data = jsonDecode(response.body);
      print(data);
      return List<ProductModel>.from(data.map((e) => ProductModel.fromJson(e)));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      return List<ProductModel>();
      // throw Exception('Failed to load album');
    }
  }
}
