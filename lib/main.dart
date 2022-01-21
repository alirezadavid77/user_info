import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_infos/bindings/detail_bindings.dart';
import 'package:user_infos/bindings/home_bindings.dart';
import 'package:user_infos/view/detial.dart';
import 'package:user_infos/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      getPages: [
        GetPage(name: '/home', page: ()=>MyHomePage(),binding: HomeBindings()),
        GetPage(name: '/detail', page: ()=>DetailPage(),binding: DetailBindings()),
      ],
      initialRoute: '/home',
    );
  }
}

