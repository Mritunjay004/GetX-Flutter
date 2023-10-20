import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello World')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Get.off(NextPage());
                  // Get.offAll(NextPage());
                  // var a = await Get.to(
                  //   () => NextPage(),
                  //   arguments: "Hello World",
                  // );

                  // print(a);
                },
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              ),
              Text("navigate")
            ],
          ),
        ),
      ),
    );
  }
}
