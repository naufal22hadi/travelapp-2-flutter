import 'package:flutter/material.dart';
import 'package:fluttertest/content_page.dart';
import 'package:fluttertest/main_home_page.dart';
import 'package:fluttertest/my_detail_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>MyHomePage()),
        GetPage(name: "/detail", page: ()=> DetailPage())
      ],
    );
  }
}

