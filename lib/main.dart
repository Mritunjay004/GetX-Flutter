import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx/pages/first_page.dart';
import 'package:getx/pages/second_page.dart';
import 'package:getx/pages/unknown_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "first",
      defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(name: "/first", page: () => const FirstPage()),
        GetPage(name: "/second", page: () => const SecondPage()),
      ],
      unknownRoute:
          GetPage(name: "/notfound", page: () => const UnknownRoutePage()),
    );
  }
}
