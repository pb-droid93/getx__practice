import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_practice/route_management/first_page.dart';
import 'package:get_practice/route_management/named_route/page_one.dart';
import 'package:get_practice/route_management/named_route/page_three.dart';
import 'package:get_practice/route_management/named_route/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'page1',
      defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(name: "/page1", page: () => const PageOne()),
        GetPage(name: "/page2", page: () => const PageTwo()),
        GetPage(name: "/page3", page: () => const PageThree()),
      ],
    );
  }
}
