import 'package:crud_php_rest_api/models/product.dart';
import 'package:crud_php_rest_api/providers/productprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<ProductProvider>(context);
    list.fetchProductFromProvider();

    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD Rest API"),
      ),
      body: list.productList == null
          ? Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemBuilder: (context, index) {
                ProductModel product = list.productList[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(product.name[0].toUpperCase()),
                  ),
                  title: Text(product.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(product.id.toString()),
                      Text(product.status.toString()),
                      Text(product.createdAt.toString()),
                      Text(product.updatedAt.toString())
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.menu,
                    ),
                    onPressed: () {},
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.red,
                  height: 5,
                );
              },
              itemCount: list.productList.length,
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
