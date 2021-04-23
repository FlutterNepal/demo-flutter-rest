import 'package:crud_php_rest_api/pages/index.dart';
import 'package:crud_php_rest_api/providers/productprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'crud',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
